import requests #para fazeer a requisição
import json #para trabalhar com os dados da api
from PyQt5 import uic, QtWidgets
from PyQt5.QtWidgets import QMessageBox
import unicodedata
import time
from requests.exceptions import RequestException

# traduz 
def traduzir(texto, destino="pt"):
    url = "https://api.mymemory.translated.net/get"
    try:
        params = {"q": texto, "langpair": f"en|{destino}"}
        resp = requests.get(url, params=params)
        return resp.json()["responseData"]["translatedText"]
    except:
        return texto

api_chave = "f34587145e4c4b71ae005234253011"
link_api = "http://api.weatherapi.com/v1/astronomy.json"

estados = [
    "Acre","Alagoas","Amapá","Amazonas","Bahia","Ceará",
    "Distrito Federal","Espírito Santo","Goiás","Maranhão",
    "Mato Grosso","Mato Grosso do Sul","Minas Gerais","Pará",
    "Paraíba","Paraná","Pernambuco","Piauí","Rio de Janeiro",
    "Rio Grande do Norte","Rio Grande do Sul","Rondônia",
    "Roraima","Santa Catarina","São Paulo","Sergipe","Tocantins"
]

# mapa de capitais (útil para query mais precisa)
capitais_por_estado = {
    "Acre": "Rio Branco",
    "Alagoas": "Maceió",
    "Amapá": "Macapá",
    "Amazonas": "Manaus",
    "Bahia": "Salvador",
    "Ceará": "Fortaleza",
    "Distrito Federal": "Brasília",
    "Espírito Santo": "Vitória",
    "Goiás": "Goiânia",
    "Maranhão": "São Luís",
    "Mato Grosso": "Cuiabá",
    "Mato Grosso do Sul": "Campo Grande",
    "Minas Gerais": "Belo Horizonte",
    "Pará": "Belém",
    "Paraíba": "João Pessoa",
    "Paraná": "Curitiba",
    "Pernambuco": "Recife",
    "Piauí": "Teresina",
    "Rio de Janeiro": "Rio de Janeiro",
    "Rio Grande do Norte": "Natal",
    "Rio Grande do Sul": "Porto Alegre",
    "Rondônia": "Porto Velho",
    "Roraima": "Boa Vista",
    "Santa Catarina": "Florianópolis",
    "São Paulo": "São Paulo",
    "Sergipe": "Aracaju",
    "Tocantins": "Palmas"
}

# coordenadas das capitais (lat, lon)
capitais_coords = {
    "Rio Branco": (-9.97499, -67.8243),
    "Maceió": (-9.66599, -35.735),
    "Macapá": (0.035, -51.070),
    "Manaus": (-3.10194, -60.025),
    "Salvador": (-12.9777, -38.5016),
    "Fortaleza": (-3.7319, -38.5267),
    "Brasília": (-15.7942, -47.8822),
    "Vitória": (-20.3155, -40.3128),
    "Goiânia": (-16.6869, -49.2648),
    "São Luís": (-2.5307, -44.3068),
    "Cuiabá": (-15.601, -56.097),
    "Campo Grande": (-20.4697, -54.6201),
    "Belo Horizonte": (-19.9167, -43.9345),
    "Belém": (-1.4558, -48.5044),
    "João Pessoa": (-7.1195, -34.845),
    "Curitiba": (-25.4284, -49.2733),
    "Recife": (-8.0476, -34.877),
    "Teresina": (-5.0919, -42.8034),
    "Rio de Janeiro": (-22.9068, -43.1729),
    "Natal": (-5.7945, -35.211),
    "Porto Alegre": (-30.0346, -51.2177),
    "Porto Velho": (-8.7612, -63.9039),
    "Boa Vista": (2.8196, -60.6733),
    "Florianópolis": (-27.5954, -48.5480),
    "São Paulo": (-23.5505, -46.6333),
    "Aracaju": (-10.9472, -37.0731),
    "Palmas": (-10.1848, -48.3336)
}

# normaliza texto
def normalize_str(s: str) -> str:
    s = s.strip().lower()
    s = unicodedata.normalize('NFD', s)
    s = ''.join(ch for ch in s if unicodedata.category(ch) != 'Mn')
    return s

# mapa de estados
estados_map = { normalize_str(nome): nome for nome in estados }

# carrega telas
app = QtWidgets.QApplication([])

try:
    tela1 = uic.loadUi("PrimeiraTela.ui")
except:
    QMessageBox.critical(None, "Erro", "Não achei o arquivo PrimeiraTela.ui")
    raise SystemExit

try:
    tela2 = uic.loadUi("SegundaTela.ui")
except:
    QMessageBox.critical(None, "Erro", "Não achei o arquivo SegundaTela.ui")
    raise SystemExit

def abrir_tela2():

    texto = tela1.lineEditTela1.text()

    #validação
    if not texto.strip():  # não escreve nada
        QMessageBox.warning(tela1, "Atenção", "Digite um estado.")
        return

    chave = normalize_str(texto)

    if chave not in estados_map:  # escreve errado ou algum que não tenha
        QMessageBox.warning(tela1, "Erro", "Estado não encontrado.")
        return

    estado_confirmado = estados_map[chave]
    tela2.label_2.setText(estado_confirmado)  # titulo segunda tela

    tela2.show()
    tela1.hide()

    # dicionário de tradução da fase da lua
    fases_lua = {
        "new moon": "Lua Nova",
        "waxing crescent": "Lua Crescente",
        "first quarter": "Quarto Crescente",
        "waxing gibbous": "Crescente Gibosa",
        "full moon": "Lua Cheia",
        "waning gibbous": "Minguante Gibosa",
        "last quarter": "Quarto Minguante",
        "third quarter": "Quarto Minguante",
        "waning crescent": "Lua Minguante",
    }

    # normaliza chaves do dicionário
    fases_lua = { normalize_str(k): v for k, v in fases_lua.items() }

    # prepara coordenadas da capital
    capital = capitais_por_estado.get(estado_confirmado, estado_confirmado)
    coords = capitais_coords.get(capital)
    if coords:
        lat, lon = coords
        # consulta por lat,lon evita ambiguidade de nomes
        query_local = f"{lat},{lon}"
    else:
        query_local = f"{capital}, {estado_confirmado}, Brazil"


    tentativa = 0
    max_tentativas = 2
    resposta = None
    while tentativa < max_tentativas:
        try:
            parametros = {"key": api_chave, "q": query_local, "lang": "pt"}
            resposta = requests.get(link_api, params=parametros, timeout=8)
            break
        except RequestException as e:
            tentativa += 1
            if tentativa < max_tentativas:
                time.sleep(0.5)
            else:
                tela2.label.setText(f"Erro de conexão: {e}")
                return

    if resposta is None:
        tela2.label.setText("Erro desconhecido ao consultar a API.")
        return

    if resposta.status_code != 200:
        try:
            erro_json = resposta.json()
            msg = erro_json.get("error", resposta.text)
        except:
            msg = resposta.text
        tela2.label.setText(f"Erro ao consultar a API (status {resposta.status_code}): {msg}")
        return

    try:
        dados = resposta.json()
    except Exception as e:
        tela2.label.setText(f"Resposta inválida da API: {e}")
        return

    try:
        loc = dados.get("location", {}) or {}
        astro = dados.get("astronomy", {}).get("astro", {}) or {}

        nome_loc = loc.get('name', '—')
        regiao = loc.get('region', '—')
        pais = loc.get('country', '—')
        lat_out = loc.get('lat', '—')
        lon_out = loc.get('lon', '—')
        tz = loc.get('tz_id', '—')
        localtime = loc.get('localtime', '—')

        fase_api = astro.get("moon_phase", "—")
        fase_normalizada = normalize_str(fase_api) if isinstance(fase_api, str) else ""
        fase_traduzida = fases_lua.get(fase_normalizada, fase_api)

        nascer_sol = astro.get('sunrise', '—')
        por_sol = astro.get('sunset', '—')
        nascer_lua = astro.get('moonrise', '—')
        por_lua = astro.get('moonset', '—')
        iluminacao = astro.get('moon_illumination', '—')

        texto_formatado = (
            "INFORMAÇÕES DO LOCAL\n"
            f"Nome: {nome_loc}\n"
            f"Região: {regiao}\n"
            f"País: {pais}\n"
            f"Latitude: {lat_out}\n"
            f"Longitude: {lon_out}\n"
            f"Fuso horário: {tz}\n"
            f"Horário local: {localtime}\n\n"

            "INFORMAÇÕES ASTRONÔMICAS\n"
            f"Nascer do Sol: {nascer_sol}\n"
            f"Pôr do Sol: {por_sol}\n"
            f"Nascer da Lua: {nascer_lua}\n"
            f"Pôr da Lua: {por_lua}\n"
            f"Fase da Lua: {fase_traduzida}\n"
            f"Iluminação da Lua: {iluminacao}%\n"
        )

    except Exception as e:
        texto_formatado = f"Erro ao formatar os dados: {e}"

    tela2.label.setText(texto_formatado)

def voltar_tela1():
    tela2.hide()
    tela1.show()

tela1.pushButtonTela1.clicked.connect(abrir_tela2)
tela2.pushButtonTela2.clicked.connect(voltar_tela1)

tela1.show()
app.exec()

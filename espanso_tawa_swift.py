import yaml
import sys

SITELEN_EN_KAMA = {
    '1': 'op_br',
    '2': 'vert',
    '3': 'hor',
    '4': 'pona',
    '5': 'ike',
    '6': 'dot',
    'q': 'cl_br',
    'w': 'poki',
    'e': 'circle',
    'r': 'box',
    't': 'down',
    'y': 'up',
    'a': 'colon',
    's': 'comma',
    'd': 'luka',
    'f': 'sound',
    'g': 'la',
}
# pakala pi jan Likipi pi nanpa 5.0: ale default.yml la, "g" li wile sama "lipu+namako", "r" li wile sama "la"
SITELEN_EN_KAMA['g'] = 'box'
SITELEN_EN_KAMA['r'] = 'la'

with open(sys.argv[1]) as f:
    nasin_espanso = yaml.safe_load(f)
for nasin in nasin_espanso['matches']:
    if nasin['replace'] == 'TEST': continue
    for pana in nasin.get('triggers', [nasin.get('trigger')]):
        kama = nasin['replace']
        kama_pona = kama.replace('"', '\\"')
        print(f'[{", ".join("."+SITELEN_EN_KAMA[s] for s in pana)}]: "{kama_pona}",')

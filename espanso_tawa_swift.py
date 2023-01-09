import yaml
import sys

SITELEN_EN_KAMA = {
    '1': 'la',
    '2': 'hor',
    '3': 'dot',
    '4': 'down',
    '5': 'ike',
    '6': 'op_br',
    'q': 'luka',
    'w': 'vert',
    'e': 'circle',
    'r': 'up',
    't': 'pona',
    'y': 'cl_br',
    'a': 'colon',
    's': 'poki',
    'd': 'box',
    'f': 'sound',
    'g': 'comma',
}

with open(sys.argv[1]) as f:
    nasin_espanso = yaml.safe_load(f)
pana_mute = set()
for nasin in nasin_espanso['matches']:
    if nasin['replace'] == 'TEST': continue
    if nasin.get('trigger') == '   ': continue
    for pana in nasin.get('triggers', [nasin.get('trigger')]):
        if pana.isspace(): continue
        if pana in pana_mute: print('duplicate!', [{", ".join("."+SITELEN_EN_KAMA[s] for s in pana)}], file=sys.stderr)
        pana_mute.add(pana)
        kama = nasin['replace']
        kama_pona = kama.replace('"', '\\"')
        print(f'[{", ".join("."+SITELEN_EN_KAMA[s] for s in pana)}]: "{kama_pona}",')

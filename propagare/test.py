
import re
import mmap
import requests

pattern = []
pattern.append('''<a[^>]+href="(.*?)"[^>]*>.*?</a>''')
pattern.append('''<meta name="twitter:creator" content="(.+?)"  />''')
pattern.append('''<meta name="article:published_time" content="(.+?)"  />''')
pattern.append('''<meta property="og:title" content="(.+?)"  />''')
pattern.append('''<meta property="og:description" content="(.+?)"  />''')
pattern.append('''<p>(.+?)</p>''')


req = requests.get('https://www.elconfidencial.com/mundo/2018-05-12/berlusconi-volver-politica-juez-retira-inhabilitacion_1562829/')
data = req.content
regex = re.compile(pattern)
res = re.findall(regex, data)
print res
print len(res)

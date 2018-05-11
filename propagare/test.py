
import re
import mmap

pattern = '''<a[^>]+href="(.*?)"[^>]*>.*?</a>'''

with open('elconf.txt', 'r+') as f:
    data = mmap.mmap(f.fileno(), 0)
    regex = re.compile(pattern)
    res = re.findall(regex, data)
    print res
    print len(res)

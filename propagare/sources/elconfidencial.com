"""
Propagare - 2018 - by psy (epsylon@riseup.net)

You should have received a copy of the GNU General Public License along
with Propagare; if not, write to the Free Software Foundation, Inc., 51
Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
----------------

Regex magic keywords to extract data from: elconfidencial.com

"""
art_url==href=["](.*?)["]
art_author==<meta name="twitter:creator" content="(.+?)">
art_time==<meta name="article:puclished_time" content="(.+?)">
art_title==<meta property="og:title" content="(.+?)">
art_description==<meta property="og:description" content="(.+?)">
art_body==<p>(.+?)</p>

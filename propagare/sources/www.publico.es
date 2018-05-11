"""
Propagare - 2018 - by psy (epsylon@riseup.net)

You should have received a copy of the GNU General Public License along
with Propagare; if not, write to the Free Software Foundation, Inc., 51
Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
----------------

Regex magic keywords to extract data from: www.publico.es

"""
art_url==class="page-link" href="(.+?)
art_url2==href="(.+?)
art_author==class="page-author page-link" href="(.+?)">(.+?)</a>
art_time==<span class="published" data-timestamp="(.+?)">(.+?)</span>
art_title==<meta property="og:title" content="(.+?)">
art_description==<meta property="og:description" content="(.+?)">
art_body==<p>(.+?)</p>

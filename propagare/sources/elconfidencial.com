"""
Propagare - 2018 - by psy (epsylon@riseup.net)

You should have received a copy of the GNU General Public License along
with Propagare; if not, write to the Free Software Foundation, Inc., 51
Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
----------------

Regex magic keywords to extract data from: elconfidencial.com

"""
art_url==hardcoded
art_stuff_url==<a\\b(?=[^>]* class=\"[^\"]*(?<=[\" ])art-tit-link[\" ])(?=[^>]* href=\"([^\"]*))
art_author==hardcoded
art_stuff_author==<meta name="twitter:creator" content="(.+?)"  />
art_time==hardcoded
art_stuff_time==<meta name="article:published_time" content="(.+?)"  />
art_title==hardcoded
art_stuff_title==<meta property="og:title" content="(.+?)"  />
art_description==hardcoded
art_stuff_description==<meta property="og:description" content="(.+?)"  />
art_body==hardcoded
art_stuff_body==<p>(.+?)</p>

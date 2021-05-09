<p align="center">
	<br>
	<h1 align="center">VulnWiki</h1>
	<p align="center">Find editable GitHub repo's wiki.</p>
</p>

<h2>Summary</h2>
<p>
  Every repository on GitHub comes with a wiki. After you’ve created a repository, only repository collaborators can edit a public repository's wiki by default, but if this restriction is disabled by the developer anyone can edit or create a new wiki page and render his content.
</p>

<h2>Configuration</h2>

* Save GitHub token in <code>.token</code> file.
* Get GitHub <code>user_session</code> Cookie using browser's Dev tool or using Burp Suite.


<h2>Usage</h2>
<p>
  
```
git clone https://github.com/pocdork/vulnwiki.git
cd vulnwiki
```
```
bash vulnwiki.sh <ORG> <GitHub user_session>
```


<h2>Follow Me</h2>

<p>
<a href="https://twitter.com/pocdork/"><img src="http://i.imgur.com/tXSoThF.png" width="50" height="50"></a>

</p>

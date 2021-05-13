<p align="center">
	<br>
	<h1 align="center">VulnWiki</h1>
	<p align="center">Find editable GitHub repo's wiki.</p>
</p>

<h2>Summary</h2>
<p>
  Every repository on GitHub comes with a wiki. After you’ve created a repository, only repository collaborators can edit a public repository's wiki by default, but if this restriction is disabled by the developer anyone can edit or create a new wiki page and render his content.
	This tool can help you to find this issue.
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
<b> Result will be like this:</b>
```
Getting vulnerable Wiki pages...

https://github.com/ORG/demo-repo/wiki
https://github.com/ORG/demo-repo-2/wiki
https://github.com/ORG/demo-repo-3/wiki
```

Further you can visit the links and create/edit the repo's wiki for a PoC. <br><br>
<b> This tool can only find this type of repository. Don't write anything wrong on the org repo's wiki page. It may harm companies reputation. I'll not be responsible for any evil action. </b>


<h2>Follow Me</h2>

<p>
<a href="https://twitter.com/pocdork/"><img src="http://i.imgur.com/tXSoThF.png" width="50" height="50"></a>

</p>

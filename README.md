<body>

<h1 id="toc_1">Collapse</h1>
<hr />

<p>
Tool to recursively collapse a directory.
copies (moves) all children files into to 
the current directory 
</p>


<h2 id="toc_1.1">INSTALLATION:</h2>
<pre>
git clone https://github.com/OrangeCrush/collapse.git
cd collapse
mv collapse.rb /usr/bin/collapse
chmod +x /usr/bin/collapse
</pre>


<h2 id="toc_1.2">USAGE:</h2>
<p>
collapse [-D] [dir/to/collapse]  
</p>


<h2 id="toc_1.3">FLAGS:</h2>
<p>
-D , Destructive (Move files, remove empty dirs)
</p>

<p>
<strong><span class="todo">TODO:</span></strong>
</p>
<ul>
<li>
Read wildcards and support multiple collapsing.

<li>
Rescue on name collisions

<li>
Implement File transactions

<li>
Implement an undo stack(transactions as a precursor to this)

<li>
Handle symlinks

</ul>

</body>
</html>

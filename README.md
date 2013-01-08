<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="Stylesheet" type="text/css" href="style.css">
<title>README</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>

<h1 id="toc_1">Collapse</h1>
<hr />

<p>
Tool to recursively collapse a directory.<br>
Copies (moves) all children files into to
the current directory 
</p>


<h2 id="toc_1.1">INSTALLATION:</h2>
<pre>
git clone https://github.com/OrangeCrush/collapse.git
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

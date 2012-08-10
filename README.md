# Jekyll Prism Plugin

The Jekyll Prism plugin is a replacement for native Pygments syntax highlighting in [Jekyll](http://github.com/mojombo/jekyll/). It uses the [Prism Syntax Highlighter](http://prismjs.com/).

## The Setup

The Prism plugin is very easy to install and start using.

Copy `prism.rb` to your plugins folder setup your layout to use the [Prism JavaScript and styles](http://prismjs.com/download.html).

``` html
<html>
  <head>
    <link href="prism.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    ...
    <!-- after all your content -->
    <script src="prism.js"></script>
  </body>
</html>
```

## Getting Started

Much of my work on the plugin is based on the Jekyll's native `highlight` tag, and it's used much the same way.

For a plain, old vanilla experience (like you see on this page), the syntax is pretty straightforward.

``` html
... content ...
{% prism javascript %}
var obj = { 'foo': true, 'bar': false };

for (key in obj) {
  console.log(obj[key]);
}
{% endprism %}
... more content ...
```

Like Jekyll's `highlight`, the Prism plugin also can highlight lines using `linenos`. The value can be a comma-separated list or a range (1, 3-7).

*Note:* you need to include line highlighting in your Prism download for this to work.

``` html
... content ...
{% prism javascript linenos="1,4" %}
var obj = { 'foo': true, 'bar': false };

for (key in obj) {
  console.log(obj[key]);
}
{% endprism %}
... more content ...
```

And for something Prism doesn't offer out of the box, declaring `linenos` without a value will highlight all lines.

``` html
... content ...
{% prism javascript linenos %}
var obj = { 'foo': true, 'bar': false };

for (key in obj) {
  console.log(obj[key]);
}
{% endprism %}
... more content ...
```


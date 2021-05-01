# CPS 148: XML

This repository is for my classwork in CPS 148/XML.

I won't have a GitHub Pages site for this class repo, because there wasn't a central web site like there was in CPS 140: HTML and CSS.

Every chapter, or "tutorial", is a self-contained activity.

## Some Helpful Tips for Frugal Linux Users

The CLI is about to become your best friend in this course.

`xmllint` and `xsltproc` are most likely preinstalled on user-friendly Linux distributions, such as Manjaro Linux.

1.  For Tutorials 1-2, use this command to validate any XML document by itself (and suppressing sending the whole XML document into standard output):
  ```
  $ xmllint --noout xmlfile.xml
  ```

2.  For Tutorials 3-4, validate an XML document against a schema with:
  ```
  $ xmllint --noout --schema schemafile.xsd xmlfile.xml
  ```

3.  For Tutorials 5-6, transform an XML document with XSLT with:
  ```
  $ xsltproc --output output.html stylesheet.xslt xmlfile.xml
  ```

### Resources

* [DocBook from the Arch Wiki](https://wiki.archlinux.org/index.php/DocBook) first hinted that I could be using `xmllint` and a CLI method to XML for this class, but I ignored it to use online XML validators.  I think I was originally scared by the fact that `xmllint` would send my XML document from input into standard output by default, even when there were no validation errors.

* [This newspaper resource page](https://support.newspapersystems.com/hc/en-us/articles/204871565-Validating-an-XML-File) helped me out for Tutorials 1-4.  I was really in denial about needing to figure out how to do XML work on Linux until Tutorial 4, where XSD schemas become relevant and where online validators can no longer help you with validation against schemas.

* `xsltproc` really saved my life in Tutorials 5-6.  I really thought I had to install Saxon HE from the AUR, until I first web searched "linux xsl".  Next, I found [a man(ual) page for `xsltproc`](https://linux.die.net/man/1/xsltproc).  Then, that got me thinking - so I used:
  ```
  $ tldr xsltproc
  ```
  to figure out if `xsltproc` was the CLI tool for me.  Lastly, I read the output to find:
  ```
    xsltproc
    
    Transform XML with XSLT to produce output (usually HTML or XML).
    
    - Transform an XML file with a specific XSLT stylesheet:
      xsltproc --output output.html stylesheet.xslt xmlfile.xml
    ...
  ```

## Bonus Material: Vim Macros

I've been putting off how to use macros in Vim for some time now.  However, after dealing with a longer XML document for stock descriptions in Tutorial 5 and way too many customer reviews for video games in Tutorial 6, I had to learn Vim macros - otherwise I would not deal with manually retabbing an entire document that is a little over 500 lines.

There are some cute initial/final endpoint manipulations that one could get really cute and clever with when it comes to Vim macros, but all of those tricks weren't necessary for the retabbing I had to do and those still ultimately rely on knowing the core idea of Vim macros.  (Why can't these textbook writers use spaces that are 4 spaces wide, instead of 3 spaces?)

Anyways, the Vim Wiki decided to be hosted by fandom.com (formerly known as Wikia)?  Ok, though I've been seriously sleeping on the Vim Wiki.  Sure, not all the pages have uniform quality control, though that is to be expected from a user contributed site.  Regardless of that, its section on [creating Vim macros](https://vim.fandom.com/wiki/Macros#Recording_a_macro) is more than enough to get started.


### Most General Form, Using Register `<letter>`

In normal mode, type:
```
q<letter><Commands you want to systematically repeat here...>q
```

There should be a message that says `recording @q` in the bottom left corner of your terminal emulator when you are in the middle of recording a macro that should persist even when you're in any sort of Insert mode.

To execute the macro `<number>` times (or, once by default), type:
```
<number>@<letter>
```

#### Special Case: Using Register `q`

I used the register `q` for my macros - a bit unimaginative, since every macro recording sequence stricly begins and stricly ends with the letter `q`.

So, I would record a macro in Normal mode with:
```
qq<Commands I want to repeat over and over here>q
```

I would execute my macro in Normal mode once with:
```
@q
```
or I could repeat the macro `<number>` times with:
```
<number>@q
```

## Git Version Control Is the Best For XML

The tasks at hand were a lot more straightforward in HTML: upload everything onto GitHub when the assignment was complete.

However, you make changes so frequently in XML that it's best just to just some form of Git to save all of your changes.

There was a clearer end goal/result to be had in HTML, with an overarching goal of finishing the JavaJam website at the very end of the course.

Meanwhile, every chapter/tutorial is essentially a stand-alone sandbox activity that is over once the chapter is over - I didn't realize this unti I was about to start Tutorial 4.  So, use Git early if you plan on using it for an XML class based on this book!

## License

All the CSS, HTML, Markdown, XML, XSD, and XSL files contained herein are licensed under the GPL license, version 3.  The CSS, XML, XSD, XSL, and PNG image assets are copyrighted material the use of which has not been specifically authorized by the copyright owner, Cengage Learning, Inc.  I am using such assets under the "Fair Use" doctrine of copyrighted material for educational purposes, as provided for in section 107 of the US Copyright Law.

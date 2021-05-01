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

## License

All the CSS, HTML, XML, XSD, and XSL files and file contained herein are licensed under the GPL license, version 3.  The CSS, XML, XSD, XSL, and PNG image assets are copyrighted material the use of which has not been specifically authorized by the copyright owner, Cengage Learning, Inc.  I am using such assets under the "Fair Use" doctrine of copyrighted material for educational purposes, as provided for in section 107 of the US Copyright Law.

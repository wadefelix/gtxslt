gtxslt
======

XSLT for gTest&#39;s xml output

Here is the sample1's output:


![sample1 's output](https://github.com/wadefelix/gtxslt/raw/master/gtest_output.png)

To use it, please apply this patch:

    *** gtest.1.6.0.cc	2011-04-16 03:49:11.000000000 +0800
    --- gtest.cc	2012-05-03 21:55:43.340238982 +0800
    ***************
    *** 3293,3298 ****
    --- 3293,3300 ----
      void XmlUnitTestResultPrinter::PrintXmlUnitTest(FILE* out,
                                                      const UnitTest& unit_test) {
        fprintf(out, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
    +   fprintf(out, "<?xml-stylesheet type=\"text/xsl\" href=\"gtest-result.xsl\" ?>\n");
    +   fprintf(out, "<!DOCTYPE testsuites SYSTEM \"gtest-result.dtd\">\n");
        fprintf(out,
                "<testsuites tests=\"%d\" failures=\"%d\" disabled=\"%d\" "
                "errors=\"0\" time=\"%s\" ",

Enjoy it!

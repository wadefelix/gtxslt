gtxslt
======

XSLT for gTest&#39;s xml output

Here is the sample1's output:


![sample1 's output](https://github.com/wadefelix/gtxslt/raw/master/gtest_output.png)

How To Use:  
1. apply patch  
    # for googletest release-1.8.0
    cd googletest
    git apply googletest-release-1.8.0.patch  
2. copy `gtest-result.dtd` and `gtest-result.xsl` to your xml output dir.  
3. build and run your test project. such as:  
    ./google-test-examples_test --gtest_output=xml:./test_detail.xml  
4. open `test_detail.xml` with browser.  

Enjoy it!

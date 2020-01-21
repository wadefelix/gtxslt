gtxslt
======

XSLT for gTest&#39;s xml output

Here is the sample1's output:


![sample1 's output](https://github.com/wadefelix/gtxslt/raw/master/gtest_output.png)

How To Use
==========
1. apply patch  
2. copy `gtest-result.dtd` and `gtest-result.xsl` to your xml output dir.  
3. build and run your test project.  
4. open `test_detail.xml` with browser.  

```bash
# apply patch
cd googletest
git apply googletest-release-1.10.0.patch

# cd googletest
cd googletest

# CMake Build Samples Project
cmake -G "MinGW Makefiles" -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_MAKE_PROGRAM=make -Dgtest_build_samples=ON .

# Build Samples
make

# run sample
./sample1_unittest.exe --gtest_output=xml:./sample1_unittest.xml
```

Enjoy it!

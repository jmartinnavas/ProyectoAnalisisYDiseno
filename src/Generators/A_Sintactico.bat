SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_05\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\darkd\Desktop\Code\Code_Analyzer\src\docs_analyzer
java -jar C:\Users\darkd\Desktop\Code\java-cup-11b.jar -parser Parser -symbols Symbols Parser.cup
pause

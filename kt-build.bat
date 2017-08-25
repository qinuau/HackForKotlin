set basedir=
set src-files=
:: set allow-kotlin-package=-Xallow-kotlin-package
set dependdir=%basedir%dependencies\
set bootstrapdir=%dependdir%bootstrap-compiler\
set bootstrap-compiler-home=%bootstrapdir%Kotlin\kotlinc\
set ideasdk-core-dir=%basedir%ideaSDK\core\
java -jar %bootstrap-compiler-home%lib\kotlin-compiler.jar -jvm-target 1.8 -cp %basedir%ideaSDK\lib\idea.jar;%basedir%ideaSDK\lib\util.jar;%bootstrap-compiler-home%lib\kotlin-compiler.jar;%dependdir%jline3.jar;%dependdir%jansi.jar;%dependdir%javaslang-2.0.6.jar;%dependdir%json-org.jar;%dependdir%kotlinx-coroutines-core.jar;%basedir%ideaSDK\jps\jps-model.jar;%bootstrap-compiler-home%lib/kotlin-stdlib.jar;%bootstrap-compiler-home%lib/kotlin-reflect.jar;%bootstrap-compiler-home%lib\kotlin-script-runtime.jar;%bootstrap-compiler-home%lib\kotlin-test.jar;%ideasdk-core-dir%annotations.jar;%ideasdk-core-dir%asm-all.jar;%ideasdk-core-dir%guava-21.0.jar;%ideasdk-core-dir%jdom.jar;%ideasdk-core-dir%jna.jar;%ideasdk-core-dir%log4j.jar;%ideasdk-core-dir%picocontainer.jar;%ideasdk-core-dir%snappy-in-java-0.5.1.jar;%ideasdk-core-dir%streamex-0.6.2.jar;%ideasdk-core-dir%trove4j.jar;%ideasdk-core-dir%util.jar;%ideasdk-core-dir%xpp3-1.1.4-min.jar;%ideasdk-core-dir%xstream-1.4.8.jar;%ideasdk-core-dir%intellij-core.jar;%dependdir%protobuf-2.6.1.jar;"%JDK_18%\lib\tools.jar";%basedir%lib\javax.inject.jar;%basedir%lib\jsr305-1.3.9.jar %allow-kotlin-package% %src-files%
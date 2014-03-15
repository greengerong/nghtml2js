####nghtml2js
=========================

 This maven plugin for Angular Directive html2js.

## How to use this plugin:

        <plugin>
            <groupId>com.github.greengerong</groupId>
            <artifactId>nghtml2js</artifactId>
            <version>0.0.3</version>
            <configuration>
                <module>demo.template</module>
                <html>${project.basedir}</html>
                <extensions>
                    <param>tpl</param>
                    <param>html</param>
                </extensions>
            </configuration>
            <executions>
                <execution>
                    <id>nghtml2js</id>
                    <phase>generate-resources</phase>
                    <goals>
                        <goal>run</goal>
                    </goals>
                </execution>
            </executions>
        </plugin>

   You can see it under the demo fold. You can go there, then run "mvn clean install" to see the result.
   
   
   You can get more about ng-template from my chinese blog [ng-template寄宿方式](http://greengerong.github.io/blog/2014/03/15/ng-html2js-maven-plugins-for-java/)

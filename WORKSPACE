load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "4.3"
RULES_JVM_EXTERNAL_SHA = "6274687f6fc5783b589f56a2f1ed60de3ce1f99bc4e8f9edef3de43bdf7c6e74"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

maven_install(
    artifacts = [
        "junit:junit:4.12",
        "com.google.guava:guava:28.0-jre",
        "org.projectlombok:lombok:1.18.22",

        "org.springframework.boot:spring-boot-starter-web:2.3.8.RELEASE",
        "org.springframework.boot:spring-boot-starter-jdbc:2.3.8.RELEASE",
        "org.springframework.boot:spring-boot-starter-test:2.3.8.RELEASE",
        "org.springframework.boot:spring-boot:2.3.8.RELEASE",
        "org.springframework.boot:spring-boot-devtools:2.3.8.RELEASE",

        "com.alibaba:druid-spring-boot-starter:1.1.21",
        "org.mybatis.spring.boot:mybatis-spring-boot-starter:1.3.2",

        "mysql:mysql-connector-java:8.0.11",
        "org.mybatis:mybatis:3.4.1",
        "org.apache.directory.studio:org.apache.commons.codec:1.8",
        "com.alibaba:fastjson:1.2.70",
        "com.alibaba.cloud:spring-cloud-starter-alibaba-nacos-config:2.2.7.RELEASE",
        "com.alibaba.cloud:spring-cloud-starter-alibaba-nacos-discovery:2.2.7.RELEASE",
        "org.springframework.cloud:spring-cloud-starter-openfeign:2.2.7.RELEASE",

        "com.baomidou:mybatis-plus-boot-starter:3.4.3.4",
        "org.xerial:sqlite-jdbc:3.41.2.1",
        "net.devh:grpc-spring-boot-starter:2.13.1.RELEASE",
        
    ],
    fetch_sources = True,
    repositories = [
        "http://uk.maven.org/maven2",
        "https://jcenter.bintray.com/",
    ],
)
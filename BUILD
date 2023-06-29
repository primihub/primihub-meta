load("@rules_java//java:defs.bzl", "java_binary", "java_library", "java_test")

package(default_visibility = ["//visibility:public"])

java_library(
    name = "java-maven-lib",
    srcs = glob(["meta-*/src/main/java/com/primihub/**/*.java"]),
    deps = [
      "@maven//:com_google_guava_guava",
      "@maven//:org_projectlombok_lombok",

      "@maven//:org_springframework_boot_spring_boot",
      "@maven//:org_springframework_boot_spring_boot_starter_web",
      "@maven//:org_springframework_boot_spring_boot_starter_test",
      "@maven//:org_springframework_boot_spring_boot_starter_jdbc",
      "@maven//:org_springframework_boot_spring_boot_devtools",

      "@maven//:com_alibaba_druid_spring_boot_starter",
      "@maven//:org_mybatis_spring_boot_mybatis_spring_boot_starter",

      "@maven//:mysql_mysql_connector_java",
      "@maven//:org_mybatis_mybatis",
      "@maven//:org_apache_directory_studio_org_apache_commons_codec",
      "@maven//:com_alibaba_fastjson",
      "@maven//:com_alibaba_cloud_spring_cloud_starter_alibaba_nacos_config",
      "@maven//:com_alibaba_cloud_spring_cloud_starter_alibaba_nacos_discovery",
      "@maven//:org_springframework_cloud_spring_cloud_starter_openfeign",

      "@maven//:com_baomidou_mybatis_plus_boot_starter",
      "@maven//:org_xerial_sqlite_jdbc",
      "@maven//:net_devh_grpc_spring_boot_starter",
      
    ],
)

java_binary(
    name = "java-maven",
    main_class = "com.primihub.MetaApplication",
    runtime_deps = [":java-maven-lib"],
)

# java_test(
#     name = "tests",
#     srcs = glob(["src/test/java/com/example/myproject/*.java"]),
#     test_class = "com.example.myproject.TestApp",
#     deps = [
#         ":java-maven-lib",
#         "@maven//:com_google_guava_guava",
#         "@maven//:junit_junit",
#     ],
# )
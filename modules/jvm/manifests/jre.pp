class jvm::jre {
  package { "openjdk-6-jre-headless":
    ensure   => present,
  }
}

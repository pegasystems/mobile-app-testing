**Note**: This project reached end-of-life and is no longer maintained. Information below should be considered as deprecated. 

**Pegasystems** enables its customers to utilize *AWS Device Farm* to test their mobile apps built with the **Pega 7 Platform**.  In order to streamline the process, this repository provides a collection of open source templates and examples of ready to use test cases.

The `calabash-hc-service-provider` directory contains a template and sample test for a mobile app built with [Pega Mobile Client](https://pdn.pega.com/exchange/components/pega-mobile-client). The tests work on both Android and iOS platforms. However, testing iOS mobile apps with Calabash requires the Calabash framework to be linked with the tested app. For apps built with the **Pega 7 Platform**, this requirement can be satisfied by adding a custom module. This module should be included in the assets.zip file and uploaded during the configuration of the mobile app build. Ready to use assets.zip files containing the Calabash framework in versions 0.19 and 0.20 can be downloaded from [here](https://bintray.com/pegasystems/mobile-app-testing).

The `calabash-uplusbank` directory contains a sample test for a mobile app built with [Pega Mashup SDK](https://pdn.pega.com/exchange/components/pega-mobile-mashup-sdk). The source code for the tested applications is available on GitHub as well, for [Android](https://github.com/pegasystems/uplus-android) and [iOS](https://github.com/pegasystems/uplus-ios).

See [PDN](https://pdn.pega.com/) for more information on running these tests and developing your own.

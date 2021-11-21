# Fastlane integration

## Allocate fastlane
 Step 1: Goto root-folder in the terminal and allocate fastlane by command
    init fastlane.
 Step 2: Select option  Manual

## Creating app in Appstore connect
 
lane: register_app do 
  produce(
  username: "manjit.sahoo@shortcut.no",
  app_identifier: "com.demo.sampleapp",
  app_name: 'MyApp',
  language: 'English',
  app_version: '1.0',
  sku: '123',
  team_name: 'SunApps GmbH'
  )
 end 
    
## Create certificate and signing

lane : get_dev_certs do
 cert(
  username: "mmanjt.sahoo@shortcut.no"
  team_name: "",
  development: true
 )
 sign(
  username: "mmanjt.sahoo@shortcut.no",
  team_name: "",
  app_identifier: "com.fastlane.no",
  development: true
 )    
 end
    
 ## create manual iPA build
  desc "To export our app manual"
  lane :export_app do
    gym(
      workspace:"SST.xcworkspace",
      scheme:"SST",
      clean: true,
      output_name:"Release.ipa",
      export_xcargs: "-allowProvisioningUpdates",
      configuration: "Release",
      export_method: "enterprise", #replace with   export_method: "app-store",
      *used for manual build
      export_options: {
      signingStyle: "manual",
      provisioningProfiles: {
        "no.securitas.SolutionsTool" => "no.securitas.Solutions Tool Inhouse"
      }
    })
    
 
## Upload iPa to app store
lane :upload_app do 
  deliver(
  ipa:"ReleaseApp.ipa", # ipa file path 
  skip_screenshts: true,
  skip_metadata: true
  skip_app_version_update: true
  )

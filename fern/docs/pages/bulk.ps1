for(($i = 0); $i -lt 3000; $i++){
$contentToAdd = @"
      - page: Welcome
        path: docs/pages/welcome-$i.mdx
      - page: Concepts
        path: docs/pages/concepts-$i.mdx
      - page: SDKs
        path: docs/pages/sdks-$i.mdx
"@
Copy-Item "concepts.mdx" -Destination "concepts-$i.mdx"
Copy-Item "sdks.mdx" -Destination "sdks-$i.mdx"
Copy-Item "welcome.mdx" -Destination "welcome-$i.mdx"
Add-Content -Path "partial.yml" -Value $contentToAdd
}

ruby -rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordpressDotCom.run({
      "source" => "../moaxcp.wordpress.2015-05-26.xml",
      "no_fetch_images" => false,
      "assets_folder" => "assets"
    })'

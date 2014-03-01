angular.module("${module}", []).run(["$templateCache", function($templateCache) {
  $templateCache.put("${module}","${html}");
}]);
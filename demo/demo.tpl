<!doctype html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="Description"
          content="AngularJS is what HTML would have been, had it been designed for building web-apps.
                 Declarative templates with data-binding, MVW, MVVM, MVC, dependency injection and great
                 testability story all implemented with pure client-side JavaScript!">
    <title>AngularJS — Superheroic JavaScript MVW Framework</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/docs.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link href="google-code-prettify/prettify.css" type="text/css" rel="stylesheet">
    <base href="/">

    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular-animate.js"></script>

    ﻿<!--[if lte IE 8]>
    <script>
        document.createElement('tabs');
        document.createElement('pane');
        document.createElement('ng-pluralize');
    </script>
    <![endif]-->
</head>
<body ng-controller="DownloadCtrl">
<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you support IE 6.
     chromium.org/developers/how-tos/chrome-frame-getting-started -->
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a
    different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a>
    to experience this site.</p><![endif]-->
<header class="header">
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="brand" href="http://angularjs.org" style="padding-top: 6px; padding-bottom: 0px;">
                    <img class="AngularJS-small" src="img/AngularJS-small.png">
                </a>
                <ul class="nav">
                    <li class="divider-vertical"></li>
                    <li class="active"><a href="http://angularjs.org/"><i class="icon-home icon-white"></i> Home</a>
                    </li>
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-eye-open icon-white"></i> Learn <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="disabled"><a href="">Home</a></li>
                            <li><a href="http://www.youtube.com/user/angularjs">Videos</a></li>
                            <li><a href="http://docs.angularjs.org/tutorial">Tutorial</a></li>
                            <li><a href="http://builtwith.angularjs.org">Case Studies</a></li>
                            <li><a href="https://github.com/angular/angular-seed">Seed App project template</a></li>
                            <li><a href="http://docs.angularjs.org/misc/faq">FAQ</a></li>
                        </ul>
                    </li>
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-book icon-white"></i> Develop <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="http://docs.angularjs.org/tutorial">Tutorial</a></li>
                            <li><a href="http://docs.angularjs.org/guide">Developer Guide</a></li>
                            <li><a href="http://docs.angularjs.org/api">API Reference</a></li>
                            <li><a href="http://docs.angularjs.org/misc/contribute">Contribute</a></li>
                            <li><a href="http://code.angularjs.org/">Download</a></li>
                        </ul>
                    </li>
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-comment icon-white"></i> Discuss <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="http://blog.angularjs.org">Blog</a></li>
                            <li><a href="http://groups.google.com/group/angular">Mailing List</a></li>
                            <li><a href="http://webchat.freenode.net/?channels=angularjs&uio=d4">Chat Room</a></li>
                            <li class="divider"></li>
                            <li><a href="https://twitter.com/#!/angularjs">Twitter</a></li>
                            <li><a href="https://plus.google.com/110323587230527980117">Google+</a></li>
                            <li class="divider"></li>
                            <li><a href="https://github.com/angular/angular.js">GitHub</a></li>
                            <li><a href="https://github.com/angular/angular.js/issues">Issue Tracker</a></li>
                        </ul>
                    </li>
                    <li class="divider-vertical"></li>
                </ul>
                <form class="navbar-search pull-right" method="GET" action="https://www.google.com/search">
                    <input type="text" name="as_q" class="search-query" placeholder="Search">
                    <input type="hidden" name="as_sitesearch" value="angularjs.org">
                </form>
            </div>
        </div>
    </div>
</header>

<div role="main" class="container">

    <div class="row" style="padding-top: 80px;">
        <div class="span12">

            <div class="hero-unit" style="height: 350px;">
                <div class="center">
                    <img class="AngularJS-large" src="img/AngularJS-large.png">
                </div>
                <div class="center">
                    <h1>HTML enhanced for web apps!</h1>
                </div>
                <div class="center">
                    <a class="btn btn-large" href="https://github.com/angular/angular.js">
                        <i class="icon-github-sign"></i> View on GitHub
                    </a>
                    <span class="spacer"></span>

                    <a class="btn btn-large btn-primary" href="" ng-click="lightbox('stable')">
                        <i class="icon-download-alt icon-large"></i> Download
                        <span class="version"> (<span>1.2.14</span>) </span>

                    </a>

                </div>
                <ul class='quick-links'>
                    <li class="google-follow">
                        Follow +AngularJS on
                        <a href="https://plus.google.com/110323587230527980117?prsrc=3" rel="publisher"
                           style="text-decoration:none;"><img src="https://ssl.gstatic.com/images/icons/gplus-32.png"
                                                              alt="" style="border:0;width:20px;height:20px;"/></a>
                    </li>
                    <li style="width: 120px; height: 25px;">
                        <g:plusone size="medium" annotation="inline" width="120"
                                   href="http://angularjs.org"></g:plusone>
                    </li>
                    <li style="width: 220px; height: 25px;">
                        <a href="https://twitter.com/angularjs" class="twitter-follow-button" data-show-count="true">Follow
                            @angularjs</a>
                    </li>
                    <li style="width: 107px; height: 25px;">
                        <a href="https://twitter.com/share" class="twitter-share-button"
                           data-url="http://angularjs.org" data-text="AngularJS - HTML Enhanced for Web Apps"
                           data-via="angularjs">Tweet</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="row first">
        <div class="span4">
            <h1>Why AngularJS?</h1>

            <p>
                HTML is great for declaring static documents, but it falters when we try to use it for
                declaring dynamic views in web-applications. AngularJS lets you extend HTML vocabulary
                for your application. The resulting environment is extraordinarily expressive, readable,
                and quick to develop.
            </p>
        </div>
        <div class="span4">
            <h1>Alternatives</h1>

            <p>
                Other frameworks deal with HTML’s shortcomings by either abstracting away HTML, CSS,
                and/or JavaScript or by providing an imperative way for manipulating the DOM. Neither of
                these address the root problem that HTML was not designed for dynamic views.
            </p>
        </div>
        <div class="span4">
            <h1>Extensibility</h1>

            <p>
                AngularJS is a toolset for building the framework most suited to your application
                development. It is fully extensible and works well with other libraries. Every feature
                can be modified or replaced to suit your unique development workflow and feature needs.
                Read on to find out how.
            </p>
        </div>
    </div>
</div>
<div class="jumbotron" ng-controller="JumbotronCtrl" ng-cloak>
    <div class="jumbotron-header">
        <h1>ng-conf 2014</h1>
    </div>
    <div class="stretched-container">
        <nav class="jumbotron-tabs" ng-if="!loading">
            <div class="jumbotron-tabs-container">
                <a href="" ng-class="{'active':category=='basics'}" class="jumbotron-tab"
                   ng-click="filterByCategory('basics')">Get to know Angular</a>
                <a href="" ng-class="{'active':category=='advanced'}" class="jumbotron-tab"
                   ng-click="filterByCategory('advanced')">Advanced Topics</a>
                <a href="" ng-class="{'active':category=='beyond'}" class="jumbotron-tab"
                   ng-click="filterByCategory('beyond')">Angular and Beyond</a>

                <div class="jumbotron-tab search-tab" ng-class="{'active':searchFocus}">
                    <span class="icon-search search-icon"></span>
                    <input class="search-input" type="text" ng-model="search" placeholder="Search Videos..."
                           ng-change="filterBySearch(search)" ng-focus="searchFocus=true; filterBySearch(search)"
                           ng-blur="searchFocus=false"/>
                </div>
            </div>
        </nav>

        <div ng-if="loading">
            <h2 class="jumbotron-message"><strong>Loading...</strong></h2>
        </div>

        <div ng-if="!loading">
            <div ng-if="videos.length==0">
                <h2 class="jumbotron-message"><strong>No videos</strong> were found by your search query</h2>
            </div>
            <div class="gallery jumbotron-body" ng-if="videos.length > 0">
                <a ng-href="{{ video.url }}" ng-repeat="video in videos" class="gallery-item video-item animated-item"
                   target="_blank">
                    <img ng-src="{{ video.imageUrl }}"/>
                    <h4 class="video-item-heading">{{ video.title }}</h4>
                </a>
            </div>
        </div>

        <nav class="jumbotron-actions">
            <a class="btn btn-primary btn-large" href="https://www.youtube.com/user/ngconfvideos?feature=watch"
               target="_blank">
                <i class="icon-play-circle"></i> View All Videos
            </a>
            <span class="spacer"></span>
            <a class="btn btn-default btn-large" href="http://ng-conf.org/" target="_blank">
                <i class="icon-external-link"></i> Go to ng-conf.org
            </a>
        </nav>
    </div>
</div>

<div role="main" class="container">
<h1 id="the-basics">The Basics</h1>

<div class="row example">
    <div class="span8 app-source" app-source="hello.html" annotate="hello.annotation"></div>
    <div class="span4">
        <span hint></span>
        <span class="pull-right" js-fiddle="hello.html"></span>

        <div class="tabs-spacer"></div>
        <div app-run="hello.html" class="well"></div>
        <h3>Watch as we build this app</h3>

        <div class="video-img" data-toggle="modal" data-video="http://www.youtube.com/embed/uFTFsKmkQnQ?&autoplay=1"
             href="#videoModal">
            <img class="video" src="img/video.png">
        </div>
    </div>
</div>


<h1 id="add-some-control">Add Some Control</h1>

<div class="row">
    <div class="span4">
        <h3>Data Binding</h3>

        <p>
            Data-binding is an automatic way of updating the view whenever the model changes, as
            well as updating the model whenever the view changes. This is awesome because it
            eliminates DOM manipulation from the list of things you have to worry about.
        </p>
    </div>
    <div class="span4">
        <h3>Controller</h3>

        <p>
            Controllers are the behavior behind the DOM elements. AngularJS lets you express the
            behavior in a clean readable form without the usual boilerplate of updating the DOM,
            registering callbacks or watching model changes.
        </p>
    </div>
    <div class="span4">
        <h3>Plain JavaScript</h3>

        <p>
            Unlike other frameworks, there is no need to inherit from proprietary types in order to wrap the
            model in accessors methods. Angular models are plain old JavaScript objects. This makes your code easy
            to
            test, maintain, reuse, and again free from boilerplate.
        </p>
    </div>
</div>
<div class=" row example">
    <div class="span8 app-source" app-source="todo.html todo.js todo.css" annotate="todo.annotation"></div>
    <div class="span4">
        <span hint></span>
        <span class="pull-right" js-fiddle="todo.html todo.js todo.css"></span>

        <div class="tabs-spacer"></div>
        <div app-run="todo.html" class="well"></div>
        <h3>Watch as we build this app</h3>

        <div class="video-img" data-toggle="modal" data-video="http://www.youtube.com/embed/WuiHuZq_cg4?&autoplay=1"
             href="#videoModal">
            <img class="video" src="img/video.png">
        </div>
    </div>
</div>

<div class="modal hide fade" style="display: none;" id="videoModal">
    <div class="modal-header">
        <a class="close" data-dismiss="modal">×</a>

        <h3>AngularJS Todo Tutorial</h3>
    </div>
    <div class="modal-body">
    </div>
</div>


<h1 id="wire-up-a-backend">Wire up a Backend</h1>

<div class="row">
    <div class="span4">
        <h3>Deep Linking</h3>

        <p>
            A deep link reflects where the user is in the app, this is useful so users can bookmark
            and email links to locations within apps. Round trip apps get this automatically, but
            AJAX apps by their nature do not. AngularJS combines the benefits of deep link with
            desktop app-like behavior.
        </p>
    </div>
    <div class="span4">
        <h3>Form Validation</h3>

        <p>
            Client-side form validation is an important part of great user experience.
            AngularJS lets you declare the validation rules of the form without having to write
            JavaScript code. Write less code, go have beer sooner.
        </p>
    </div>
    <div class="span4">
        <h3>Server Communication</h3>

        <p>
            AngularJS provides built-in services on top of XHR as well as various other backends
            using third party libraries. Promises further simplify your code
            by handling asynchronous return of data. In this example, we use the AngularFire
            library to wire up a <a href="https://www.firebase.com/">Firebase</a> backend to a simple Angular app.
        </p>
    </div>
</div>
<div class=" row example">
    <div class="span8 app-source" app-source="project.html project.js list.html detail.html" resource="resource"
         route="route" firebase="firebase" annotate="project.annotation" module="project"></div>
    <div class="span4">
        <span hint></span>
            <span class="pull-right" js-fiddle="project.html list.html detail.html project.js" resource="resource"
                  route="route" firebase="firebase" module="project"></span>

        <div class="tabs-spacer"></div>
        <!--[if lt IE 10]>
        <div class="alert alert-error">
            Your browser doesn't support <a href="http://www.w3.org/TR/cors/">CORS</a>, therefore
            it can not fetch data from an external domain resulting in no projects shown in this example.
        </div>
        <![endif]-->
        <div app-run="project.html" module="project" class="well"></div>
    </div>
</div>


<h1 id="create-components">Create Components</h1>

<div class="row">
    <div class="span4">
        <h3>Directives</h3>

        <p>
            Directives is a unique and powerful feature available only in Angular. Directives let
            you invent new HTML syntax, specific to your application.
        </p>
    </div>
    <div class="span4">
        <h3>Reusable Components</h3>

        <p>
            We use directives to create reusable components. A component allows you to hide complex
            DOM structure, CSS, and behavior. This lets you focus either on what the application
            does or how the application looks separately.
        </p>
    </div>
    <div class="span4">
        <h3>Localization</h3>

        <p>
            An important part of serious apps is localization. Angular's locale aware filters and
            stemming directives give you building blocks to make your application available in all
            locales.
        </p>
    </div>
</div>
<div class=" row example">
    <div class="span8 app-source" app-source="tabs.html components.js app.js bootstrap.css"
         annotate="tabs.annotation" module="app"></div>
    <div class="span4">
        <span hint></span>
        <span class="pull-right" js-fiddle="tabs.html components.js app.js" module="app"></span>

        <div class="tabs-spacer"></div>
        <h4>Locale: US</h4>

        <div app-run="tabs.html" module="app-us" class="well"></div>
        <div class="tabs-spacer"></div>
        <h4>Locale: SK</h4>

        <div app-run="tabs.html" module="app-sk" class="well"></div>
    </div>
</div>


<h1 id="embed-and-inject">Embed and Inject</h1>

<div class="row">
    <div class="span4">
        <h3>Embeddable</h3>

        <p>
            AngularJS works great with other technologies. Add as much or as little of AngularJS to
            an existing page as you like. Many other frameworks require full commitment. This page
            has multiple AngularJS applications embedded in it. Because AngularJS has no global
            state multiple apps can run on a single page without the use of <code>iframe</code>s. We
            encourage you to view-source and look around.
        </p>
    </div>
    <div class="span4">
        <h3>Injectable</h3>

        <p>
            The dependency injection in AngularJS allows you to declaratively describe how your
            application is wired. This means that your application needs no <code>main()</code>
            method which is usually an unmaintainable mess. Dependency injection is also a core to
            AngularJS. This means that any component which does not fit your needs can easily be
            replaced.
        </p>
    </div>
    <div class="span4">
        <h3>Testable</h3>

        <p>
            AngularJS was designed from ground up to be testable. It encourages behavior-view
            separation, comes pre-bundled with mocks, and takes full advantage of dependency
            injection. It also comes with end-to-end scenario runner which eliminates test flakiness
            by understanding the inner workings of AngularJS.
        </p>
    </div>
</div>
<div class="spacer"></div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-right"><a href="#" target="_self">Back to top</a></p>

        <p>Super-powered by Google ©2010-2013</p>

        <p>Code licensed under the
            <a href="https://github.com/angular/angular.js/blob/master/LICENSE" target="_blank">The
                MIT License</a>. Documentation licensed under <a
                    href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.
        </p>
    </div>
</footer>

<!-- JavaScript at the bottom for fast page loading -->
<!-- end scripts -->

<div class="hello-code">
    <!-- ============== Hello ============== -->

    <script type="text/ng-template" id="hello.html">
        <div>
            <label>Name:</label>
            <input type="text" ng-model="yourName" placeholder="Enter a name here">
            <hr>
            <h1>Hello {{yourName}}!</h1>
        </div>
    </script>
    <script type="text/ng-template" id="hello.annotation">
        { "hello.html":
        { "ng-app": "Tells AngularJS to be active in this portion of the page. In this case the entire document."
        , "angular.min.js": "Load AngularJS."
        , "ng-model": "This links the form and the model. This means that any changes to the control update the data in your model, and when you change the model it updates the control. Try it! Type in the control and see it update below."
        , "{{yourName}}": "The <code>{{
            }}</code> are a declarative way of specifying data binding locations in the HTML. AngularJS will automatically update this text whenever the
        <code>yourName</code> property changes."
        }
        }
    </script>
</div>
<div class="todo-code">
    <!-- ============== TODO ============== -->
    <style type="text/css" id="todo.css">
        .done-true {
            text-decoration: line-through;
            color: grey;
        }
    </style>
    <script id="todo.js">
        function TodoCtrl($scope) {
            $scope.todos = [
                {text: 'learn angular', done: true},
                {text: 'build an angular app', done: false}
            ];

            $scope.addTodo = function () {
                $scope.todos.push({text: $scope.todoText, done: false});
                $scope.todoText = '';
            };

            $scope.remaining = function () {
                var count = 0;
                angular.forEach($scope.todos, function (todo) {
                    count += todo.done ? 0 : 1;
                });
                return count;
            };

            $scope.archive = function () {
                var oldTodos = $scope.todos;
                $scope.todos = [];
                angular.forEach(oldTodos, function (todo) {
                    if (!todo.done) $scope.todos.push(todo);
                });
            };
        }
    </script>
    <script type="text/ng-template" id="todo.html">
        <h2>Todo</h2>
        <div ng-controller="TodoCtrl">
            <span>{{remaining()}} of {{todos.length}} remaining</span>
            [ <a href="" ng-click="archive()">archive</a> ]
            <ul class="unstyled">
                <li ng-repeat="todo in todos">
                    <input type="checkbox" ng-model="todo.done">
                    <span class="done-{{todo.done}}">{{todo.text}}</span>
                </li>
            </ul>
            <form ng-submit="addTodo()">
                <input type="text" ng-model="todoText" size="30"
                       placeholder="add new todo here">
                <input class="btn-primary" type="submit" value="add">
            </form>
        </div>
    </script>
    <script type="text/ng-template" id="todo.annotation">
        { "todo.html":
        { "ng-app": "Tells AngularJS to be active in this portion of the page. In this case the entire document."
        , "angular.min.js": "Load AngularJS."
        , "todo.js": "Your behavior lives in JavaScript controllers."
        , "ng-controller": "The behavior of content under this element will be managed using the
        <code>TodoCtrl</code> class defined in <code>todo.js</code>."
        , "{{remaining()}}": "The <code>{{
            }}</code> are a declarative way of specifying data binding locations in the HTML. AngularJS will automatically update this text whenever the
        <code>remaining()</code> function return value changes."
        , "ng-click": "Instead of registering event-handlers, you declare which method on the controller to call. Here clicking the link will call
        <code>archive()</code> method."
        , "ng-repeat": "Use <code>ng-repeat</code> to unroll a collection. Here, for every object in
        <code>todos</code>, AngularJS will create new copy of the <code>
            &lt;li&gt;</code> element. When objects are added to the <code>todos</code> collection the
        <code>ng-repeat</code> automatically adds new <code>
            &lt;li&gt;</code> elements into the DOM. Similarly when the objects are removed from
        <code>todos</code> then the corresponding <code>
            &lt;li&gt;</code> element is removed as well. This is one of the most versatile directives in AngularJS."
        , "ng-model": "This links the form and the model. This means that any changes to the control update the data in your model, and when you change the model it updates the control. AngularJS automatically copies the state of the checkbox into
        <code>todo.done</code>. Conversely, if you update
        <code>todo.done</code> you will see the checkbox respond accordingly."
        , "{{todo.done}}": "To show strikethroughs for completed tasks we have created a CSS class
        <code>done-true</code>. When the <code>todo.done</code> is <code>true</code> the resulting CSS selector is
        <code>done-true</code> which then applies the strikethrough."
        , "ng-submit": "Intercepts form submission and instead calls
        <code>addTodo()</code>. Inside this method we read the <code>todoText</code> property and insert it into the
        <code>todos</code> collection."
        }

        , "todo.css":
        { ".done-true": "Add strikethrough decoration when the task is done."
        }

        , "todo.js":
        { "TodoCtrl": "The controller is the code behind the view. You can clearly see your application behavior because there is no DOM manipulation or framework specific boilerplate. Just simple, readable JavaScript."
        , "$scope": "
        <code>$scope</code> contains your model data. It is the glue between the controller and the view. The <code>$scope</code> is just one of the services that can be injected into the controller."
        , "todos": "We are creating the model with two initial todo items. Notice that you simply assign your model to the
        <code>$scope</code> and AngularJS reflects the state in the UI automatically. The model data is a Plain-Old-JavaScript-Object no need to wrap it in proxy or accesses the property through special setter methods."
        , "addTodo": "We are assigning the behavior into the <code>$scope</code> so that the
        <code>ng-submit</code> can invoke it."
        , "push": "This is unmodified
        <code>Array.push</code> method. Calling it updates the model, which then updates the view through data-binding. The
        <code>ng&ndash;repeat</code> is bound to this array. It automatically unrolls the array and adds the new DOM element into the view. (see
        <code>ng&ndash;repeat</code> in <code>index.html</code> tab.)"
        , "todoText": "Because of  bi-directional data-binding, the model is always up to date. This means that we can simply read the state of the user input. No need for registering callbacks, event listeners or using framework dependent API."
        , "''": "Writing to the form controls is just as easy. The data-binding will clear the control for us."
        , "remaining": "This is a computed property. No need to define its dependencies or worry about when it needs to be updated."
        , "[]": "You can replace the model with new instance at any time, without doing any special model listener registration."
        }
        }
    </script>
</div>
<div class="project-code">
<!-- ============== Projects ============== -->
<style type="text/css" id="project.css">
    table {
        text-align: left;
    }

    table td, table th {
        vertical-align: top;
        padding: 0 .25em;
    }
</style>
<script id="project.js">
    angular.module('project', ['ngRoute', 'firebase'])

            .value('fbURL', 'https://angularjs-projects.firebaseio.com/')

            .factory('Projects', function ($firebase, fbURL) {
                return $firebase(new Firebase(fbURL));
            })

            .config(function ($routeProvider) {
                $routeProvider
                        .when('/', {
                            controller: 'ListCtrl',
                            templateUrl: 'list.html'
                        })
                        .when('/edit/:projectId', {
                            controller: 'EditCtrl',
                            templateUrl: 'detail.html'
                        })
                        .when('/new', {
                            controller: 'CreateCtrl',
                            templateUrl: 'detail.html'
                        })
                        .otherwise({
                            redirectTo: '/'
                        });
            })

            .controller('ListCtrl', function ($scope, Projects) {
                $scope.projects = Projects;
            })

            .controller('CreateCtrl', function ($scope, $location, $timeout, Projects) {
                $scope.save = function () {
                    Projects.$add($scope.project, function () {
                        $timeout(function () {
                            $location.path('/');
                        });
                    });
                };
            })

            .controller('EditCtrl',
            function ($scope, $location, $routeParams, $firebase, fbURL) {
                var projectUrl = fbURL + $routeParams.projectId;
                $scope.project = $firebase(new Firebase(projectUrl));

                $scope.destroy = function () {
                    $scope.project.$remove();
                    $location.path('/');
                };

                $scope.save = function () {
                    $scope.project.$save();
                    $location.path('/');
                };
            });
</script>
<script type="text/ng-template" id="project.html">
    <h2>JavaScript Projects</h2>
    <div ng-view></div>
</script>
<script type="text/ng-template" id="list.html">
    <input type="text" ng-model="search" class="search-query" placeholder="Search">
    <table>
        <thead>
        <tr>
            <th>Project</th>
            <th>Description</th>
            <th><a href="#/new"><i class="icon-plus-sign"></i></a></th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="project in projects | orderByPriority | filter:search | orderBy:'name'">
            <td><a href="{{project.site}}" target="_blank">{{project.name}}</a></td>
            <td>{{project.description}}</td>
            <td>
                <a href="#/edit/{{project.$id}}"><i class="icon-pencil"></i></a>
            </td>
        </tr>
        </tbody>
    </table>
</script>
<script type="text/ng-template" id="detail.html">
    <form name="myForm">
        <div class="control-group" ng-class="{error: myForm.name.$invalid && !myForm.name.$pristine}">
            <label>Name</label>
            <input type="text" name="name" ng-model="project.name" required>
          <span ng-show="myForm.name.$error.required && !myForm.name.$pristine" class="help-inline">
              Required {{myForm.name.$pristine}}</span>
        </div>

        <div class="control-group" ng-class="{error: myForm.site.$invalid && !myForm.site.$pristine}">
            <label>Website</label>
            <input type="url" name="site" ng-model="project.site" required>
          <span ng-show="myForm.site.$error.required && !myForm.name.$pristine" class="help-inline">
              Required</span>
          <span ng-show="myForm.site.$error.url" class="help-inline">
              Not a URL</span>
        </div>

        <label>Description</label>
        <textarea name="description" ng-model="project.description"></textarea>

        <br>
        <a href="#/" class="btn">Cancel</a>
        <button ng-click="save()" ng-disabled="myForm.$invalid"
                class="btn btn-primary">Save
        </button>
        <button ng-click="destroy()"
                ng-show="project.$remove" class="btn btn-danger">Delete
        </button>
    </form>
</script>
<script type="text/ng-template" id="project.annotation">
    { "project.html":
    { "ng-app": "Tells AngularJS to be active in this portion of the page. In this case the entire document."
    , "project": "The <code>ng-app</code> activates the
    <code>project</code> module for this page region. This lets you have modules that run in different parts of the page."
    , "angular.min.js": "Load AngularJS."
    , "angular-resource.min.js": "Load AngularJS resource module."
    , "angular-route.min.js": "Load AngularJS route module."
    , "v0/firebase.js": "Load the Firebase JavaScript SDK."
    , "angularfire.min.js": "Load the Angular bindings for Firebase."
    , "project.js": "The
    <code>project.js</code> file contains the controllers which specify your application’s behavior."
    , "ng-view": "We’re marking this <code>
        &lt;div&gt;</code> as the place we’ll load partial pages or “views”. The surrounding page will stay static while we load changing UI into this section. In this case, we’ll be switching between a list of “projects” and the form to add new or edit existing “projects”."
    }
    , "project.js":
    { "project": "This defines the
    <code>project</code> module. You use modules to configure existing services, and define new services, directives, filters, and so on. Here, we’ll set up ‘routes’ that map URLs to partials. AngularJS watches the browser location and automatically updates the partial when the URL changes."
    , "firebase": "Modules can depend on other modules. Here, <code>project</code> needs
    <code>firebase</code> which handles the persistence for this application."
    , "value": "Define a singleton object that can be injected into controllers and services."
    , "fbURL": "The URL to the Firebase location from which we want to load data (and store changes)."
    , "factory": "Define a factory that will return a singleton object that can be injected into controllers and services."
    , "$firebase": "A service provided by AngularFire for binding data from Firebase to Angular models."
    , "config": "You use <code>config()</code> to configure existing services. Here, we’re configuring the <code>$routeProvider</code> responsible for mapping URL paths to partials."
    , "controller": "Define a controller function that can be attached to the DOM using
    <code>ng-controller</code> or to a view template by specifying it in the route configuration."
    , "when": "When the URL is <code>/</code> it will load <code>list.html</code> into the view and attach the
    <code>ListCtrl</code> controller. You can instantly get an overview of an app's structure by reading the route definitions."
    , "/edit/:projectId": "This route definition has a colon ':' in it. You use colons to make a component of the URL available to your controller. So now,
    <code>EditCtrl</code> can refer to the <code>projectId</code> property which tells it which project to edit."
    , "otherwise": "The
    <code>otherwise</code> route specifies which view to display when the URL doesn’t match any of the explicit routes. It’s the default."
    , "Projects": "<code>Projects</code> is an instance of <code>$firebase</code>, and is defined in the
    <code>projects</code> module. It exposes method to add, remove and update projects in the collection. Its purpose is to abstract the server communication. This lets the controller focus on the behavior rather than the complexities of server access."
    , "$scope": "We can immediately assign the set of projects to our scope, and they will be displayed in the view."
    , "$timeout": "The callback for Projects.$add is called asynchronously, and we have to use $timeout to ensure $location has the right context when it executes."
    , "$location": "You use the <code>$location</code> service to access the browser's location."
    , "path": "Use the
    <code>path</code> method to change the application's 'deep-linking' location. Changing the URL will automatically activate the new route, and transition the application to display that view -- in this case, the
    <code>/edit/</code> view."
    , "$routeParams": "Here, we ask AngularJS to inject the
    <code>$routeParams</code> service.  We use it to access the parameters extracted from the route path definitions."
    , "projectId": "This extracts the
    <code>projectId</code> from the URL. This allows the controller to use deep-linking information for processing."
    , "isClean": "Determines whether the user has modified the form. We use this information to enable the save button in the view."
    , "destroy": "Called when the user clicks the delete button in the view."
    , "save": "Called when the user clicks the save button in the view."
    , "null": "We can delete an object by simply setting its value to null."
    }
    , "list.html":
    { "ng-model": "Bind the input field to the
    <code>search</code> property. The property is then used to filter for only the projects which contain the text entered by the user."
    , "#/new": "A link to a <code>/new</code> route defined in
    <code>projects.js</code>. Note that we follow the spirit of the web. There is no need to register callbacks on links, we are simply navigating to a new URL. This automatically updates the browser history, and enables deep-linking. But unlike a server round trip application, this navigation event gets rendered instantly in the browser."
    , "ng-repeat": "Use <code>ng-repeat</code> to unroll a collection. Here, for every project in
    <code>projects</code>, AngularJS will create new copy of the <code>&lt;tr&gt;</code> element."
    , "orderByPriority": "A special filter provided by AngularFire to convert an object into an ordered array as defined by Firebase."
    , "filter": "The <code>filter</code> uses the <code>search</code> to return only a subset of items in the <code>projects</code> array. As you enter text into the search box, the
    <code>filter</code> will narrow down the list according to your criteria.
    <code>ng-repeat</code> will then add or remove items from the table."
    , "orderBy": "Returns the <code>project</code> list ordered by <code>name</code> property."
    , "#/edit/{{project._id.$oid}}": "Creates individual edit links, by embedding the project id into the URL. The embedded project id serves the purpose of deep-linking, back button, as well as a way to communicate to
    <code>EditCtrl</code> which project should be edited."
    }
    , "detail.html":
    { "myForm": "Create a form named
    <code>myForm</code>. We will declare form validation rules here which we'll use to show input errors and disable buttons."
    , "ng-class": "Add an <code>error</code> CSS class when the <code>myForm</code>'s input
    <code>name</code> is invalid."
    , "required": "Invalidate the input control when no text is entered."
    , "ng-show": "Show this error message when the <code>myForm</code>'s input <code>name</code> has
    <code>required</code> validation error."
    , "url": "The URL type automatically adds URL validation."
    , "ng-disabled": "Disable the 'Save' button when the form has not been filled in or is invalid."
    }
    }
</script>
</div>
<div class="tabs-code">
    <!-- ============== Tabs ============== -->
    <script id="components.js">
        angular.module('components', [])

                .directive('tabs', function () {
                    return {
                        restrict: 'E',
                        transclude: true,
                        scope: {},
                        controller: function ($scope, $element) {
                            var panes = $scope.panes = [];

                            $scope.select = function (pane) {
                                angular.forEach(panes, function (pane) {
                                    pane.selected = false;
                                });
                                pane.selected = true;
                            }

                            this.addPane = function (pane) {
                                if (panes.length == 0) $scope.select(pane);
                                panes.push(pane);
                            }
                        },
                        template: '<div class="tabbable">' +
                                '<ul class="nav nav-tabs">' +
                                '<li ng-repeat="pane in panes" ng-class="{active:pane.selected}">' +
                                '<a href="" ng-click="select(pane)">{{pane.title}}</a>' +
                                '</li>' +
                                '</ul>' +
                                '<div class="tab-content" ng-transclude></div>' +
                                '</div>',
                        replace: true
                    };
                })

                .directive('pane', function () {
                    return {
                        require: '^tabs',
                        restrict: 'E',
                        transclude: true,
                        scope: { title: '@' },
                        link: function (scope, element, attrs, tabsCtrl) {
                            tabsCtrl.addPane(scope);
                        },
                        template: '<div class="tab-pane" ng-class="{active: selected}" ng-transclude>' +
                                '</div>',
                        replace: true
                    };
                })
    </script>
    <script>
        angular.module('app-us', ['app', 'ngLocal.us']);
        angular.module('app-sk', ['app', 'ngLocal.sk']);
    </script>
    <script id="app.js">
        angular.module('app', ['components'])

                .controller('BeerCounter', function ($scope, $locale) {
                    $scope.beers = [0, 1, 2, 3, 4, 5, 6];
                    if ($locale.id == 'en-us') {
                        $scope.beerForms = {
                            0: 'no beers',
                            one: '{} beer',
                            other: '{} beers'
                        };
                    } else {
                        $scope.beerForms = {
                            0: 'žiadne pivo',
                            one: '{} pivo',
                            few: '{} pivá',
                            other: '{} pív'
                        };
                    }
                });
    </script>
    <style type="text/css" id="bootstrap.css">
        @import '//netdna.bootstrapcdn.com/bootstrap/2.0.2/css/bootstrap.min.css';
    </style>
    <script type="text/ng-template" id="tabs.html">
        <tabs>
            <pane title="Localization">
                Date: {{ '2012-04-01' | date:'fullDate' }} <br>
                Currency: {{ 123456 | currency }} <br>
                Number: {{ 98765.4321 | number }} <br>
            </pane>
            <pane title="Pluralization">
                <div ng-controller="BeerCounter">
                    <div ng-repeat="beerCount in beers">
                        <ng-pluralize count="beerCount" when="beerForms"></ng-pluralize>
                    </div>
                </div>
            </pane>
        </tabs>
    </script>
    <script type="text/ng-template" id="tabs.annotation">
        { "tabs.html":
        { "\"app\"": "The <code>ng-app</code> activates the
        <code>app</code> module for this page region. The module contains the BeerCounter controller and has a dependency on the
        <code>components</code> module, which contains the HTML extension (directives) for <code>&lt;tabs&gt;</code> and
        <code>&lt;pane&gt;</code> components."
        , "tabs": "We've extended HTML's vocabulary with a custom <code>tabs</code> element. The
        <code>tabs</code> abstracts the complex HTML structure and behavior necessary for rendering of tabs. The result is a more readable view and very easily reusable syntax."
        , "pane": "Again, we've extended the HTML vocabulary with a custom <code>pane</code> element. The
        <code>pane</code> element renders the panes of each tab. The result is a more readable view."
        , "title": "Components can take input parameters in the form of HTML attributes. In this case the
        <code>title</code> attribute specifies the tab's text."
        , "Localization": "An example demonstrating localization features of AngularJS: date, number and currency formatting."
        , "Pluralization": "An example demonstrating pluralization features of AngularJS. Notice that that the plural form of 'beer' changes in 'SK' locale at zero, one, two, and five beers."
        , "BeerCounter": "We use the
        <code>BeerCounter</code> controller to set up counting rules depending on the locale."
        , "ng-pluralize": "The
        <code>ng-pluralize</code> directive selects the right plural format for each locale. Unlike English, other languages often have complex plural rules depending on the number of items involved."
        , "count": "Binds to the number property. The count becomes the selector for the plural form to choose."
        , "when": "Binds to pluralization rules. The rules are unique for each locale and language combination."
        }
        , "components.js":
        { "directive": "Use the module's
        <code>directive()</code> method to define new HTML vocabulary for our components. "
        , "tabs": "Define the <code>&lt;tabs&gt;</code> component."
        , "controller": "Just like with the application, the component can have a controller that provides the component's behavior."
        , "$element": "Current DOM element of the component."
        , "$scope": "Current scope of the component."
        , "select": "Publish a <code>select()</code> method which will be used by the view to switch between tabs."
        , "addPane": "Components often need to collaborate together as a unit. In our case the <code>
            &lt;pane&gt;</code> will use the <code>addPane()</code> method to be register itself with its <code>&lt;tabs&gt;</code> container."
        , "template": "The <code>template</code> is the HTML which needs to be rendered by the browser instead of the
        <code>
            &lt;tabs&gt;</code> placeholder. Notice that the HTML in this template can have other directives within it."
        , "restrict": "The <code>restrict</code> specifies the HTML format of the component. In this case the <code>&lt;tabs&gt;</code> must be an HTML element."
        , "ng-transclude": "Marks the location where the contents of the <code>
            &lt;tabs&gt;</code> element will be placed."
        , "transclude": "Specifies that when AngularJS replaces the <code>
            &lt;tabs&gt;</code> element with the expanded HTML that it should place the original content somewhere specified by an
        <code>ng-transclude</code> directive (see below)."
        , "scope": "Our component needs to have a private scope so that its view properties are not accidentally modified outside the
        <code>&lt;tabs&gt;</code>. If you do need to expose attributes, you can declare input/output attributes. See the
        <code>&lt;pane&gt;</code> component below for an example."
        , "replace": "Tells AngularJS that the original <code>&lt;tabs&gt;</code> element should be replaced with the
        <code>template</code> rather than appending to it."
        , "active": "We set the <code>active</code> CSS class to show the currently active tab."
        , "require": "Specify that the <code>&lt;pane&gt;</code> component must be inside a <code>
            &lt;tabs&gt;</code> component. This gives the <code>&lt;pane&gt;</code> component to access to the <code>
            &lt;tabs&gt;</code>' controller methods -- the <code>addPane()</code> method in this case."
        , "tabsCtrl": "As we've specified we <code>require</code> the <code>
            &lt;tabs&gt;</code> as our container, we get passed its controller instance."
        , "ng-click": "Select the clicked tab."
        , "bind": "Specifies how is the <code>title</code> attribute on the <code>
            &lt;pane&gt;</code> element interpreted. The <code>bind</code> strategy copies the interpolated value to
        <code>&lt;pane&gt;</code>'s scope. This makes <code>title</code> available for binding in
        <code>template</code>."
        }
        , "app.js":
        { "$locale": "The
        <code>$locale</code> service contains meta-data for the current locale. There are AngularJS locale modules available for each language locale combination."
        , "beers": "Set up beers counting array. We will iterate over this array and see how the 'beers' count gets rendered for each count."
        , "id": "Create different pluralization rules based on locale. In an actual app, one would load a different module which would contain translation as well as localization rules for each language."
        , "beerForms": "Pluralization rules for English."
        , "components": "The <code>app</code> module declares a dependency on the
        <code>components</code> module, which ensures that the directives in the
        <code>components</code> module are also loaded into the application."
        }
        }
    </script>
</div>

<!-- The Download Modal that is to be shown when the user clicks on Download in the main AngularJS.org page -->
<div class="modal fade downloadModal" id="downloadModal" ng-class="{in: lightbox()}">
    <div class="modal-header">
        <button type="button" class="close" ng-click="lightbox(false)">×</button>
        <h2 id="downloadLabel">Download AngularJS</h2>

        <div ng-show="CURRENT_STABLE_VERSION == CURRENT_UNSTABLE_VERSION"
             class="alert alert-info">
            There is currently no unstable version for download.
        </div>
    </div>
    <div class="modal-body">

        <dl class="dl-horizontal">
            <dt>Branch</dt>
            <dd>
          <span>
            <span class="btn-group" data-toggle="buttons-radio">
              <button id="bluePill" type="button" ng-class="getPillClass('stable', currentBranch)" class="btn bluePill"
                      ng-click="selectType('stable')">Stable
              </button>
              <button id="redPill" type="button" ng-class="getPillClass('unstable', currentBranch)" class="btn redPill"
                      ng-click="selectType('unstable')">Unstable
              </button>
              <a id="extraInfoBranch" href="" rel="popover" data-original-title="Branches"
                 data-content="<dl class='dl-horizontal'><dt>Stable</dt><dd>The Release has been well tested, and the API for this version will not undergo any further change.</dd><dt>Unstable</dt><dd>This version is still being worked on, and API's are subject to change without any prior notice. Use only if you want to remain on the most cutting edge...</dd></dl>"><i
                      class="icon-question-sign"></i></a>
            </span>

          </span>

            </dd>
            <dt>Build</dt>
            <dd>
          <span>
            <span class="btn-group" data-toggle="buttons-radio">
              <button type="button" class="btn" ng-class="getPillClass('minified', currentBuild)"
                      ng-click="selectBuild('minified')" ng-class="get">Minified
              </button>
              <button type="button" class="btn" ng-class="getPillClass('uncompressed', currentBuild)"
                      ng-click="selectBuild('uncompressed')">Uncompressed
              </button>
              <button type="button" class="btn" ng-class="getPillClass('zipped', currentBuild)"
                      ng-click="selectBuild('zipped')">Zip
              </button>
              <a id="extraInfoBuild" href="" rel="popover" data-original-title="Branches"
                 data-content="<dl class='dl-horizontal'><dt>Minified</dt><dd>Minified and obfuscated version of the AngularJS base code. Use this in your deployed application (but only if you can't use Google's CDN)</dd><dt>Uncompressed</dt><dd>The main AngularJS source code, as is. Useful for debugging and development purpose, but should ideally not be used in your deployed application</dd><dt>Zipped</dt><dd>The zipped version of the Angular Build, which contains both the builds of AngularJS, as well as documentation and other extras</dd></dl>"><i
                      class="icon-question-sign"></i></a>
            </span>

          </span>
            </dd>

            <dt>CDN</dt>
            <dd>
          <span class="input-append">
            <input class="input-xxlarge" type="text" readonly="readonly" ng-model="cdnURL">
            <a id="extraInfoCDN" href="" rel="popover" data-original-title="Why Google CDN?"
               data-content="While downloading and using the AngularJS source code is great for development, we recommend that you source the script from Google's CDN (Content Delivery Network) in your deployed, customer facing app whenever possible. You get the following advantages for doing so: <ul><li><strong>Better Caching :</strong> If you host AngularJS yourself, your users will have to download the source code atleast once. But if the browser sees that you are referring to Google CDN's version of AngularJS, and your user has visited another app which uses AngularJS, then he can avail the benefits of caching, and thus reduce one download, speeding up his overall experience!</li><li><strong>Decreased Latency :</strong> Google's CDN distributes your static content across the globe, in various diverse, physical locations. It increases the odds that the user gets a version of AngularJS served from a location near him, thus reducing overall latency.</li><li><strong>Increased Parallelism : </strong>Using Google's CDN reduces one request to your domain. Depending on the browser, the number of parallel requests it can make to a domain is restricted (as low as 2 in IE 7). So it can make a gigantic difference in loading times for users of those browsers.</li></ul>"><i
                    class="icon-question-sign"></i></a>
          </span>
            </dd>

            <dt>Bower</dt>
            <dd>
          <span class="input-append">
            <input class="input-xxlarge" type="text" readonly="readonly" value="bower install angular">
            <a id="extraInfoBower" href="" rel="popover" data-original-title="What is Bower?"
               data-content="Bower is a package manager for client-side JavaScript components.<br><br>For more info please see: https://github.com/bower/bower"><i
                    class="icon-question-sign"></i></a>
          </span>
            </dd>
        </dl>

    </div>
    <div class="modal-footer">
        <a ng-href="http://code.angularjs.org/{{getVersion(currentBranch)}}">Extras</a>
        <a href="http://code.angularjs.org/">Previous Versions</a>

        <a class="btn btn-primary btn-large" style="float: right; font-size: 20px; padding-left: 20px;"
           ng-href="{{downloadLink()}}" download><i class="icon-download-alt icon-large"></i> Download</a>
    </div>
</div>
<div id="downloadModalBackdrop" class="modal-backdrop fade" ng-class="{in: lightbox()}"
     ng-click='lightbox(false)'></div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $().dropdown();
</script>
<script src="google-code-prettify/prettify.min.js"></script>
<script src="js/homepage.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular-resource.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular-route.min.js"></script>
<script src="https://cdn.firebase.com/v0/firebase.js"></script>
<script src="https://cdn.firebase.com/libs/angularfire/0.5.0/angularfire.min.js"></script>
<script src="http://code.angularjs.org/1.2.14/i18n/angular-locale_sk.js"></script>
<script>
    angular.module('ngLocal.sk', [])._invokeQueue.push(angular.module('ngLocale')._invokeQueue[0]);
</script>
<script src="http://code.angularjs.org/1.2.14/i18n/angular-locale_en-us.js"></script>
<script>
    angular.module('ngLocal.us', [])._invokeQueue.push(angular.module('ngLocale')._invokeQueue[0]);
    angular.bootstrap(document, ['ngRoute', 'homepage', 'ngLocal.us']);
</script>

<script src="https://apis.google.com/js/plusone.js"></script>
<script src="//platform.twitter.com/widgets.js"></script>
<script type="text/javascript">
    var _gaq = [
        ['_setAccount', 'UA-8594346-3'],
        ['_setDomainName', '.angularjs.org'],
        ['_trackPageview'],
        ['_trackPageLoadTime']
    ];

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();
</script>
</body>
</html>
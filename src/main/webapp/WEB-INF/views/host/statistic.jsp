<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
=========================================================
* 통계
=========================================================

=========================================================
-->
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="/hexagon/resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/hexagon/resources/assets/img/favicon.png">
  <title>
    통계
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="/hexagon/resources/assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="/hexagon/resources/assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="/hexagon/resources/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="white-content">
  <div class="wrapper">
    <%@ include file="../include/menu.jsp" %>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="javascript:void(0)">Icons</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse" id="navigation">
            <ul class="navbar-nav ml-auto">
              <li class="search-bar input-group">
                <button class="btn btn-link" id="search-button" data-toggle="modal" data-target="#searchModal"><i class="tim-icons icon-zoom-split" ></i>
                  <span class="d-lg-none d-md-block">Search</span>
                </button>
              </li>
              <li class="dropdown nav-item">
                <a href="javascript:void(0)" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="notification d-none d-lg-block d-xl-block"></div>
                  <i class="tim-icons icon-sound-wave"></i>
                  <p class="d-lg-none">
                    Notifications
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-menu-right dropdown-navbar">
                  <li class="nav-link"><a href="#" class="nav-item dropdown-item">Mike John responded to your email</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">You have 5 more tasks</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Your friend Michael is in town</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Another notification</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Another one</a></li>
                </ul>
              </li>
              <li class="dropdown nav-item">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="photo">
                    <img src="/hexagon/resources/assets/img/anime3.png" alt="Profile Photo">
                  </div>
                  <b class="caret d-none d-lg-block d-xl-block"></b>
                  <p class="d-lg-none">
                    Log out
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-navbar">
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Profile</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Settings</a></li>
                  <li class="dropdown-divider"></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Log out</a></li>
                </ul>
              </li>
              <li class="separator d-lg-none"></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">100 Awesome Nucleo Icons</h5>
                <p class="category">Handcrafted by our friends from <a href="https://nucleoapp.com/?ref=1712">NucleoApp</a></p>
              </div>
              <div class="card-body all-icons">
                <div class="row">
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-alert-circle-exc"></i>
                      <p>icon-alert-circle-exc</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-align-center"></i>
                      <p>icon-align-center</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-align-left-2"></i>
                      <p>icon-align-left-2</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-app"></i>
                      <p>icon-app</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-atom"></i>
                      <p>icon-atom</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-attach-87"></i>
                      <p>icon-attach-87</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-badge"></i>
                      <p>icon-badge</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-bag-16"></i>
                      <p>icon-bag-16</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-bank"></i>
                      <p>icon-bank</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-basket-simple"></i>
                      <p>icon-basket-simple</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-bell-55"></i>
                      <p>icon-bell-55</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-bold"></i>
                      <p>icon-bold</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-book-bookmark"></i>
                      <p>icon-book-bookmark</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-double-right"></i>
                      <p>icon-double-right</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-bulb-63"></i>
                      <p>icon-bulb-63</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-bullet-list-67"></i>
                      <p>icon-bullet-list-67</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-bus-front-12"></i>
                      <p>icon-bus-front-12</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-button-power"></i>
                      <p>icon-button-power</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-camera-18"></i>
                      <p>icon-camera-18</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-calendar-60"></i>
                      <p>icon-calendar-60</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-caps-small"></i>
                      <p>icon-caps-small</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-cart"></i>
                      <p>icon-cart</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-chart-bar-32"></i>
                      <p>icon-chart-bar-32</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-chart-pie-36"></i>
                      <p>icon-chart-pie-36</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-chat-33"></i>
                      <p>icon-chat-33</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-check-2"></i>
                      <p>icon-check-2</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-cloud-download-93"></i>
                      <p>icon-cloud-download-93</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-cloud-upload-94"></i>
                      <p>icon-cloud-upload-94</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-coins"></i>
                      <p>icon-coins</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-compass-05"></i>
                      <p>icon-compass-05</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-controller"></i>
                      <p>icon-controller</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-credit-card"></i>
                      <p>icon-credit-card</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-delivery-fast"></i>
                      <p>icon-delivery-fast</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-email-85"></i>
                      <p>icon-email-85</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-gift-2"></i>
                      <p>icon-gift-2</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-globe-2"></i>
                      <p>icon-globe-2</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-headphones"></i>
                      <p>icon-headphones</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-heart-2"></i>
                      <p>icon-heart-2</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-html5"></i>
                      <p>icon-html5</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-double-left"></i>
                      <p>icon-double-left</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-image-02"></i>
                      <p>icon-image-02</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-istanbul"></i>
                      <p>icon-istanbul</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-key-25"></i>
                      <p>icon-key-25</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-laptop"></i>
                      <p>icon-laptop</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-light-3"></i>
                      <p>icon-light-3</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-link-72"></i>
                      <p>icon-link-72</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-lock-circle"></i>
                      <p>icon-lock-circle</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-map-big"></i>
                      <p>icon-map-big</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-minimal-down"></i>
                      <p>icon-minimal-down</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-minimal-left"></i>
                      <p>icon-minimal-left</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-minimal-right"></i>
                      <p>icon-minimal-right</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-minimal-up"></i>
                      <p>icon-minimal-up</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-mobile"></i>
                      <p>icon-mobile</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-molecule-40"></i>
                      <p>icon-molecule-40</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-money-coins"></i>
                      <p>icon-money-coins</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-notes"></i>
                      <p>icon-notes</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-palette"></i>
                      <p>icon-palette</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-paper"></i>
                      <p>icon-paper</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-pin"></i>
                      <p>icon-pin</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-planet"></i>
                      <p>icon-planet</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-puzzle-10"></i>
                      <p>icon-puzzle-10</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-pencil"></i>
                      <p>icon-pencil</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-satisfied"></i>
                      <p>icon-satisfied</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-scissors"></i>
                      <p>icon-scissors</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-send"></i>
                      <p>icon-send</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-settings-gear-63"></i>
                      <p>icon-settings-gear-63</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-settings"></i>
                      <p>icon-settings</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-wifi"></i>
                      <p>icon-wifi</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-single-02"></i>
                      <p>icon-single-02</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-single-copy-04"></i>
                      <p>icon-single-copy-04</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-sound-wave"></i>
                      <p>icon-sound-wave</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-spaceship"></i>
                      <p>icon-spaceship</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-square-pin"></i>
                      <p>icon-square-pin</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-support-17"></i>
                      <p>icon-support-17</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-tablet-2"></i>
                      <p>icon-tablet-2</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-tag"></i>
                      <p>icon-tag</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-tap-02"></i>
                      <p>icon-tap-02</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-tie-bow"></i>
                      <p>icon-tie-bow</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-time-alarm"></i>
                      <p>icon-time-alarm</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-trash-simple"></i>
                      <p>icon-trash-simple</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-trophy"></i>
                      <p>icon-trophy</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-tv-2"></i>
                      <p>icon-tv-2</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-upload"></i>
                      <p>icon-upload</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-user-run"></i>
                      <p>icon-user-run</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-vector"></i>
                      <p>icon-vector</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-video-66"></i>
                      <p>icon-video-66</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-wallet-43"></i>
                      <p>icon-wallet-43</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-volume-98"></i>
                      <p>icon-volume-98</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-watch-time"></i>
                      <p>icon-watch-time</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-world"></i>
                      <p>icon-world</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-zoom-split"></i>
                      <p>icon-zoom-split</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-refresh-01"></i>
                      <p>icon-refresh-01</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-refresh-02"></i>
                      <p>icon-refresh-02</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-shape-star"></i>
                      <p>icon-shape-star</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-components"></i>
                      <p>icon-components</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-triangle-right-17"></i>
                      <p>icon-triangle-right-17</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-button-pause"></i>
                      <p>icon-button-pause</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-simple-remove"></i>
                      <p>icon-simple-remove</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-simple-add"></i>
                      <p>icon-simple-add</p>
                    </div>
                  </div>
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                    <div class="font-icon-detail">
                      <i class="tim-icons icon-simple-delete"></i>
                      <p>icon-simple-delete</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
       <%@ include file="../include/adminfooter.jsp" %>
    </div>
  </div>
  
 <!-- css및 js -->  
<%@ include file ="../include/adminSetting.jsp" %>

</body>

</html>
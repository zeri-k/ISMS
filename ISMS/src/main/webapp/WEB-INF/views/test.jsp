<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="./resources/assets/images/favicon.png">
<title>ISMS Test</title>
<!-- Custom CSS -->
<link href="./resources/dist/css/style.min.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function() {
		$('#btnResult').off().click(function() {
			var total = 0;
			var tmp = 0;
			
			for(i=0; i<30; i++){
				tmp = 0;
				var resultNum = $("#num_"+i).val();
				var num = $("#hNum_"+i).val();
				var resultItem = $("#item_"+i).val();
				var item = $("#hItem_"+i).val();
				
				if (resultNum.replace(/\s/gi, '') == num.replace(/\s/gi, '')) {
					$("#num_"+i).attr('class', 'form-control is-valid');
					tmp++;
				} else {
					$("#num_"+i).attr('class', 'form-control is-invalid');
				}

				if (resultItem.replace(/\s|·|,/gi, '') == item.replace(/\s|·|,/gi, '')) {
					$("#item_"+i).attr('class', 'form-control is-valid');
					tmp++;
				} else {
					$("#item_"+i).attr('class', 'form-control is-invalid');
				}
				
				if(tmp == 2){
					total++;
				}
			}
			alert("총 점수 : "+total+"/30");
		});
	});
	
	function showResult(index){
		if($("#btn_"+index).val()=='0'){
			$("#num_"+index).attr('class', 'form-control is-invalid');
			$("#item_"+index).attr('class', 'form-control is-invalid');
			$("#num_"+index).val($("#hNum_"+index).val());
			$("#item_"+index).val($("#hItem_"+index).val());
			
			$('#btnShow_'+index)[0].innerHTML = 'Hide';
			$("#btn_"+index).val('1');
		}else{
			$("#num_"+index).attr('class', 'form-control');
			$("#item_"+index).attr('class', 'form-control');
			$("#num_"+index).val('');
			$("#item_"+index).val('');
			
			$('#btnShow_'+index)[0].innerHTML = 'Show';
			$("#btn_"+index).val('0');
		}
	}
</script>
</head>

<body>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin6">
			<nav class="navbar top-navbar navbar-expand-md">
				<div class="navbar-header" data-logobg="skin6">
					<!-- This is for the sidebar toggle which is visible on mobile only -->
					<a class="nav-toggler waves-effect waves-light d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<div class="navbar-brand">
						<!-- Logo icon -->
						<a href="main.do"> <b class="logo-icon"> <!-- Dark Logo icon -->
								<img src="./resources/assets/images/logo-icon.png"
								alt="homepage" class="dark-logo" /> <!-- Light Logo icon --> <img
								src="./resources/assets/images/logo-icon.png" alt="homepage"
								class="light-logo" />
						</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
								<!-- dark Logo text --> <img
								src="./resources/assets/images/logo-text.png" alt="homepage"
								class="dark-logo" /> <!-- Light Logo text --> <img
								src="./resources/assets/images/logo-light-text.png"
								class="light-logo" alt="homepage" />
						</span>
						</a>
					</div>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="topbartoggler d-block d-md-none waves-effect waves-light"
						href="javascript:void(0)" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"><i class="ti-more"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar" data-sidebarbg="skin6">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar" data-sidebarbg="skin6">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li class="nav-small-cap"><span class="hide-menu">ISMS
								TEST</span></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow"
							href="javascript:void(0)" aria-expanded="false"><i
								data-feather="file-text" class="feather-icon"></i><span
								class="hide-menu">ISMS </span></a>
							<ul aria-expanded="false"
								class="collapse  first-level base-level-line">
								<li class="sidebar-item"><a href="question.do"
									class="sidebar-link"><span class="hide-menu"> 문제 </span></a></li>
								<li class="sidebar-item"><a href="test.do"
									class="sidebar-link"><span class="hide-menu"> 모의시험 </span></a>
								</li>
							</ul></li>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<h4
							class="page-title text-truncate text-dark font-weight-medium mb-1">시험</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="main.do"
										class="text-muted">Home</a></li>
									<li class="breadcrumb-item text-muted active"
										aria-current="page">Test</li>
								</ol>
							</nav>
						</div>
					</div>
					<div class="col-5 align-self-center">
						<div class="customize-input float-right">
							<select
								class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
								<option selected>준비중</option>
								<option value="1">test 1</option>
								<option value="2">test 2</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<form action="#">
								<c:forEach items="${list}" var="test" varStatus="status">
									<div class="card-body" id="question">
										<h4 class="card-title" id="check_list">${status.count}.
											${test.check_list}</h4>
										<div class="form-body">
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
														<input type="text" class="form-control"
															id="num_${status.index}" name="num_${status.index}"
															placeholder="항목번호"> <input type="hidden"
															id="hNum_${status.index}" value="${test.num}">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" class="form-control"
															id="item_${status.index}" name="item_${status.index}"
															placeholder="항목명"> <input type="hidden"
															id="hItem_${status.index}" value="${test.item}">
													</div>
												</div>
												<button type="button" class="btn btn-info"
													id="btnShow_${status.index}"
													onclick="showResult(${status.index});">Show</button>
												<input type="hidden" id="btn_${status.index}" value="0">
											</div>
										</div>
									</div>
								</c:forEach>
								<div class="form-actions">
									<div class="text-right">
										<button type="button" class="btn btn-info" id="btnResult">Submit</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Right sidebar -->
				<!-- ============================================================== -->
				<!-- .right-sidebar -->
				<!-- ============================================================== -->
				<!-- End Right sidebar -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer text-center text-muted">
				All Rights Reserved by kaget. Developed by <a
					href="http://kaget.iptime.org">kaget</a>.
			</footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="./resources/assets/libs/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="./resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script
		src="./resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- apps -->
	<!-- apps -->
	<script src="./resources/dist/js/app-style-switcher.js"></script>
	<script src="./resources/dist/js/feather.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="./resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="./resources/assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<!-- themejs -->
	<!--Menu sidebar -->
	<script src="./resources/dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="./resources/dist/js/custom.min.js"></script>
</body>

</html>
<%inherit file="/base/default.mako"/>
<%block name="addition_header">
<style type="text/css">
.reset-box-sizing,
.reset-box-sizing * {
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
}
</style>
</%block>
<div class="row">
	<div class="col-sm-6 col-md-6 col-lg-6">
		<section>
		<ul class="list-inline">
		% for forum in forums:
		<li><a class="btn btn-primary" href="${request.route_path('forums.view', name=forum.name)}">${forum.name}</a></li>
		% endfor
		</ul>
		</section>
		<div class="panel panel-info">
		  <div class="panel-heading">
		    <h3 class="panel-title">Recent Topics <a href="${request.route_path('forums.feeds')}"><img alt="Atom feed" src="/public/images/feed-icon.svg" width=15px/></a></h3>
		  </div>
		  <div class="panel-body">
			  <ul class="list-inline text-right">
			  	<li><a class="btn btn-primary btn-xs" href="${request.route_path('forums.index')}">All forums</a></li></li>
			  	<li><a class="btn btn-primary btn-xs" href="${request.route_path('forums.topics.index')}">All topics</a></li></li>
			  	<li><a class="btn btn-primary btn-xs" href="${request.route_path('forums.tags.index')}">All tags</a></li></li>
				<li><a class="btn btn-primary btn-xs" href="${request.route_path('forums.topics.compose')}">New topics</a></li></li>
			  </ul>
			  <ul class="list-unstyled">
			    % for topic in recent_topics:
			    	<li><a href="${request.route_path('forums.topics.view', title=topic.title, topic_id=topic.id)}">${topic.title}</a></li>
			    % endfor
			  </ul>
		  </div>
		</div>
	</div>
	<div class="col-sm-6 col-md-6 col-lg-6">
		<div style="font-size: larger;" class="well">
			<p>
				ยินดีต้อนรับสู่สังคมพุมบ้า พวกเราต้องการที่จะนำชุมชนของเรากลับคืนมา หากคุณยังจดจำคืนวันอันแสนงดงามและต้องการมีส่วนร่วมในการพัฒนาสังคมแห่งนี้ กรุณาแจ้งความจำนงมาที่ <a href="mailto:burawich@gmail.com?Subject=Pumbaa%20Volunteer">Burawich Pamornnak</a> (CoE18).
				ขอเชิญทุกคนมาร่วมแบ่งปันความคิดเห็น เพื่อที่จะทำให้สังคมแห่งนี้น่าอยู่เช่นเดิม
			</p>
			<p>
				ขอบคุณครับ
			</p>
		</div>
		<div class="reset-box-sizing">
			<h4 class="text-info">Search</h4>
			<script>
			  (function() {
			    var cx = '012330424726856876039:gyjrvz5ohbo';
			    var gcse = document.createElement('script');
			    gcse.type = 'text/javascript';
			    gcse.async = true;
			    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
			        '//www.google.com/cse/cse.js?cx=' + cx;
			    var s = document.getElementsByTagName('script')[0];
			    s.parentNode.insertBefore(gcse, s);
			  })();
			</script>
			<gcse:search></gcse:search>
		</div>
		<div class="panel panel-info">
		  <div class="panel-heading">
		    <h3 class="panel-title">Last Comments </h3>
		  </div>
		  <div class="panel-body">
			  <ul class="list-unstyled">
			    % for topic in last_comments_topics:
			    	<li><a href="${request.route_path('forums.topics.view', title=topic.title, topic_id=topic.id)}">${topic.title}</a></li>
			    % endfor
			  </ul>
		  </div>
		</div>
	</div>
</div>

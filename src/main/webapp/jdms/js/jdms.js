$(function(){
	//手机京东hover
	$('#mobile_jd,#mobile_pop,#mobile_static').hover(function(){
		$('#mobile_pop').show();
	},function(){
		$('#mobile_pop').hide();
	});
	//网站导航hover
	item_hover('#siteMap','#siteMap_list','hover');
	//客户服务hover
	item_hover('#service','#service_list','hover');
	//我的京东hover
	item_hover('#myjd','#myjd_list','hover');
	// 我的地址
	item_hover('.address','#adress_list','hover');
	$('#adress_list div').on('click',function(){
		var index = $(this).index();
		$('#adress_list .item').children().removeClass('selected');
		$('#adress_list .item').eq(index).children().addClass('selected');
		var txt = $('#adress_list .item').eq(index).children().text();
		$('.address_text').text(txt);
	});
	//logo旁边的全部分类 
	$('#categorys-mini .cw-icon,#categorys-mini-main').hover(function(){
		$('#categorys-mini-main').show();
		$('#categorys-mini .cw-icon').css({'border-bottom':'0px'});
	},function(){
		$('#categorys-mini-main').hide();
		$('#categorys-mini .cw-icon').css({'border-bottom':'1px solid #ccc'});
	});
	//搜索历史
	$('.text').focus(function(){
		$('.text').attr('placeholder','');
		if($('#shelper li').length > 1){
			$('#shelper').show();
		}
	});
	$('.text').keyup(function(event){
		if(event.keyCode == 13){//enter键
			var text = $('.text').val();
			if(localStorage.searchs){
				localStorage.searchs= localStorage.searchs+','+text;
			}else{
				localStorage.searchs = text;
			}
		}
	});
	$('.form button').click(function(){//点击搜索
		var text = $('.text').val();
		if(localStorage.searchs){
			localStorage.searchs= localStorage.searchs+','+text;
		}else{
			localStorage.searchs = text;
		}
	});
	//删除全部搜索历史
	$('.delall').click(function(){
		$('#shelper').empty();
		$('.text').css({'border-bottom':'1px solid #B61D1D'});
		localStorage.removeItem('search');
		$('.shelper').hide();
	});
	if(localStorage.searchs){
		//动态添加搜索历史
	    var bran = localStorage.searchs.split(" ").join("");//把输入的空格变为空
		var str = bran.split(',');//以逗号分割成数组
		var local = unique(str);//除去重复项的搜索数组
		bran=local.join(',');
		localStorage.searchs = bran;
		for(var i=0;i<local.length;i++){
			var lidom = document.createElement('li');
			var li_item2 = document.createElement('div');
			li_item2.className='search_count'+' '+'count_'+i;
			var lishi = document.createTextNode('搜索历史');
			li_item2.appendChild(lishi);
			lidom.appendChild(li_item2);
			var li_item1 = document.createElement('div');
			li_item1.className = 'inputtext';
			var searchtext = document.createTextNode(local[i]);
			li_item1.appendChild(searchtext);
			lidom.appendChild(li_item1);
			var pul = document.getElementById('shelper');
			pul.insertBefore(lidom,pul.childNodes[0]);
			//点选和删除一个搜索历史
			(function(x){
				$(lidom).hover(function(){
					var index = $(this).index();
					$('.count_'+x).empty();
					$('.count_'+x).prepend('<div class="del_item">删除</div>');
					//一个一个删除历史搜索
					$('.count_'+x).click(function(){
						local.splice(x,1);
						localStorage.searchs = local.join(',');//赋值给localStorage.search
						$(this).parent().remove();
						if($('#shelper li').length==1){
							$('#shelper').hide();
							localStorage.removeItem('searchs');
						}
					});
					//点选历史搜索
					$(this).click(function(){
						var history = $('#shelper li').eq(index).children().last().text();
						$('.text').val(history);
					});
				},function(){
					$('.count_'+x).empty();
					$('.count_'+x).prepend('搜索历史');
				});
			})(i);
		}
	}
	//当搜索框失焦的时候
	$('.text').blur(function(){
		$('.text').attr('placeholder','烧烤食材');
		setTimeout(function(){$('#shelper').hide()},150);
	});
	// 购物车
	$('#settleup-2014').hover(function(){
		var buynum = $(this).find('#shopping-amount').text();
		if(buynum==0){
			$(this).find('.prompt').show();
			$(this).find('#settleup-content').hide();
		}else{
			$(this).find('.prompt').hide();
			$(this).find('#settleup-content').show();
			$('#settleup-content .smc .p-price').text('×'+buynum);
			$('#settleup-content .smb b').text(buynum);
		}
		$('#settleup-content .smc .delete').click(function(){
			$('#settleup-2014 #shopping-amount').text('0');
			$('#settleup-2014 .prompt').show();
			$('#settleup-2014 #settleup-content').hide();
		});
	},function(){});
	// 秒杀——更多分类
	$('.skmu_cls_item_last,.skmu_mcate').hover(function(){
		$('.skmu_cls_item_last').addClass('skmu_cls_item_active');
		$('.skmu_arrow').addClass('rotate');
		$('.skmu_mcate').css({opacity:1,top:'56px',visibility:'visible'});
	},function(){
		$('.skmu_cls_item_last').removeClass('skmu_cls_item_active');
		$('.skmu_arrow').removeClass('rotate');
		$('.skmu_mcate').css({opacity:0,top:'156px',visibility:'hidden'});
	});
	// 秒杀导航栏置顶
	$(window).scroll(function(){
		var scrolltop = $(document).scrollTop();
		if(scrolltop >=120){
			$('#skmu').css({position: 'fixed',top: '0px','z-index': 999});
			if(scrolltop>=180){
				$('#timeline').css({position: 'fixed',top: '45px','z-index': 998});
				$('#timeline').addClass('fixed');
				$('.before,.after').hide();
			}else{
				$('#timeline').css({position: 'static'});
				$('#timeline').removeClass('fixed');
				$('.before,.after').show();
			}
		}else{
			$('#skmu').css({position: 'static'});
		}
	});
	// 秒杀tab卡
	$('.timeline_item').click(function(){
		var index = $(this).index();
		$('.timeline_item').removeClass('timeline_item_selected');
		$('.timeline_item').eq(index).addClass('timeline_item_selected');
		$(document).scrollTop(180);
	});
	// 秒杀倒计时
	timer($('.timeline_item_link_skew_time'),$('.timeline_timecount_time .hour'),$('.timeline_timecount_time .minutes'),$('.timeline_timecount_time .seconds'));

	// 登录框,点击登录弹出
	$('.hello').click(function(){
		$('.ui-dialog').show();
		$('.ui-mask').show();
		$('.ui-dialog-close').click(function(){
			$('.ui-dialog').hide();
			$('.ui-mask').hide();
		});
	});
});
//函数hover改变样式
//id为hover的dom，listid为隐藏的模块，cname为hover的样式
function item_hover(id,listid,cname){
	$(id).hover(function(){
		$(listid).show();
		$(id).addClass(cname);
	},function(){
		$(listid).hide();
		$(id).removeClass(cname);
	});
	$(listid).hover(function(){
		$(listid).show();
		$(id).addClass(cname);
	},function(){
		$(listid).hide();
		$(id).removeClass(cname);
	});
}
//去除数组中重复项
function unique(arr) {
  var result = [], hash = {};
  for (var i = 0, elem; (elem = arr[i]) != null; i++) {
    if (!hash[elem]) {
    	if(elem != ''){
      		result.push(elem);
      		hash[elem] = true;
      }
    }
  }
  return result;
}
// 秒杀倒计时
//skew_time为时间列表，倒计时中hourname为装载小时的dom，minutename为分钟dom，secondname为秒钟dom
function timer(skew_time,hourname,minutename,secondname){
	var now = new Date();
	sethours(now);
	countdown(now);
	var times= setInterval(function(){//秒杀距离结束和距离开始倒计时
		var nowt = new Date();//获取当前的时间
		sethours(nowt);
		countdown(nowt);	
	},1000);
	function sethours(nowtime){//设置整点时间
		var hour = nowtime.getHours();
		switch(true){//确定正在秒杀的时间
			case hour>=0 && hour<2:
				$(skew_time).first().text('00:00');
				break;
			case hour>=2 && hour<4:
				$(skew_time).first().text('02:00');
				break;
			case hour>=4 && hour<6:
				$(skew_time).first().text('04:00');
				break;
			case hour>=6 && hour<8:
				$(skew_time).first().text('06:00');
				break;
			case hour>=8 && hour<10:
				$(skew_time).first().text('08:00');
				break;
			case hour>=10 && hour<12:
				$(skew_time).first().text('10:00');
				break;
			case hour>=12 && hour<14:
				$(skew_time).first().text('12:00');
				break;
			case hour>=14 && hour<16:
				$(skew_time).first().text('14:00');
				break;
			case hour>=16 && hour<18:
				$(skew_time).first().text('16:00');
				break;
			case hour>=18 && hour<20:
				$(skew_time).first().text('18:00');
				break;
			case hour>=20 && hour<22:
				$(skew_time).first().text('20:00');
				break;
			case hour>=22:
				$(skew_time).first().text('22:00');
				break;
		}
		var fhour = parseInt($(skew_time).first().text());//正在秒杀的时间
		for(var i = 1;i<$(skew_time).length;i++){//时间列表具体时间的设置
			if(parseInt($(skew_time).eq(i-1).text())==22){
				$(skew_time).eq(i).text('00:00');
			}else if(parseInt($(skew_time).eq(i-1).text())<8){
				$(skew_time).eq(i).text('0'+(parseInt($(skew_time).eq(i-1).text())+2)+':00');
			}else{
				$(skew_time).eq(i).text(parseInt($(skew_time).eq(i-1).text())+2+':00');
			}
		}
	}
	function countdown(nowtime){//设置每个倒计时,时分秒
		var time = [86400000,3600000,60000,1000];
		var nyear = nowtime.getFullYear();//当前的年份
		var nmonth = nowtime.getMonth();//当前月份
		var ndate = nowtime.getDate();//当前号数
		if(parseInt($(skew_time).eq(1).text())=='00:00'){//如果第二个秒杀时间为0点，号数+1
			ndate = ndate+1;
		}
		var next = new Date(nyear,nmonth,ndate,parseInt($(skew_time).eq(1).text()),00,00);//结束时间，也就是第二个秒杀时间
		var ms = next.getTime()-nowtime.getTime();//相差的毫秒数
		if(ms>=0){
			var days = parseInt(ms/time[0]);//天数
			var hours = parseInt((ms-days*time[0])/time[1]);//小时
			if(hours<10){hours = '0'+hours;}
			var minutes = parseInt((ms-days*time[0]-hours*time[1])/time[2]);//分
			if(minutes<10){minutes = '0'+minutes;}
			var seconds =parseInt((ms-days*time[0]-hours*time[1]-minutes*time[2])/time[3]);//秒
			if(seconds<10){seconds = '0'+seconds;}
			$(minutename).each(function(){
				$(this).text(minutes);
			});
			$(secondname).each(function(){
				$(this).text(seconds);
			});	
			$(hourname).first().text(hours);
			$(hourname).eq(1).text(hours);
			for(var j=2;j<$(skew_time).length;j++){
				$(hourname).eq(j).text('0'+(parseInt(hours)+(j-1)*2));
			}		
		}
	}
}
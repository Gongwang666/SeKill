$(function(){
	//头部导航栏弹出框
	$('#shortcut-2014 .dorpdown').hover(function(){
		$(this).find('.dt').addClass('hover');
		$(this).find('.ci-right').addClass('rotate');
		$(this).find('.dorpdown-layer').show();
		if($(this).find('.ci-left')){
			$(this).find('.ci-left').css({"background-position":"0px -25px"});
		}
		$('.ui-areamini-content .item').click(function(){
			var index = $('.ui-areamini-content .item').index($(this));
			$('.ui-areamini-content .item').find('a').removeClass('selected');
			$(this).find('a').addClass('selected');
			$('.ui-areamini-text').text($(this).text());
			$('.ui-areamini-text').attr('title',$(this).text());
			$('.ui-areamini-text').attr('data-id',$(this).find('a').attr('data-id'));
			if($('.ui-areamini-text').text().length>2){
				$('#shortcut-2014 #ttbar-mycity .dd-spacer').css({width:'107px'});
			}else{
				$('#shortcut-2014 #ttbar-mycity .dd-spacer').css({width:'95px'});
			}
		});
	},function(){
		$(this).find('.dt').removeClass('hover');
		$(this).find('.ci-right').removeClass('rotate');
		$(this).find('.dorpdown-layer').hide();
		if($(this).find('.ci-left')){
			$(this).find('.ci-left').css({"background-position":"0px 0px"});
		}
	});
	// 点击登录弹出登录框
	$('.link-login').click(function(){
		$('.ui-dialog').show();
		$('.ui-mask').show();
		$('.ui-dialog-close').click(function(){
			$('.ui-dialog').hide();
			$('.ui-mask').hide();
		});
	});
	//logo旁边的全部分类 
	$('#categorys-mini .cw-icon,#categorys-mini-main').hover(function(){
		$('#categorys-mini-main').show();
	},function(){
		$('#categorys-mini-main').hide();
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
			if(localStorage.search){
				localStorage.search= localStorage.search+','+text;
			}else{
				localStorage.search = text;
			}
		}
	});
	$('.form button').click(function(){//点击搜索
		var text = $('.text').val();
		if(localStorage.search){
			localStorage.search= localStorage.search+','+text;
		}else{
			localStorage.search = text;
		}
	});
	//删除全部搜索历史
	$('.delall').click(function(){
		$('#shelper').empty();
		$('.text').css({'border-bottom':'1px solid #B61D1D'});
		localStorage.removeItem('search');
		$('.shelper').hide();
	});
	if(localStorage.search){
		//动态添加搜索历史
	    var bran = localStorage.search.split(" ").join("");//把输入的空格变为空
		var str = bran.split(',');//以逗号分割成数组
		var local = unique(str);//除去重复项的搜索数组
		console.log(local);
		bran=local.join(',');
		localStorage.search = bran;
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
						localStorage.search = local.join(',');//赋值给localStorage.search
						$(this).parent().remove();
						if($('#shelper li').length==1){
							$('#shelper').hide();
							localStorage.removeItem('search');
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
	// 放大镜功能
	$.fn.magnifying = function(){
		var that = $(this),
		 $imgCon = that.find('.jqzoom'),//正常图片容器
		 	$Img = $imgCon.find('img'),//正常图片，还有放大图片集合
		   $Drag = that.find('.jqZoompup'),//拖动滑动容器
		   $show = that.find('.zoomdiv'),//放大镜显示区域
		$showIMg = $show.find('img'),//放大镜图片
		multiple = $show.width()/$Drag.width();

		$imgCon.mousemove(function(e){
			$Drag.css('display','block');
			$show.css('display','block');
		    //获取坐标的两种方法
		   	// var iX = e.clientX - this.offsetLeft - $Drag.width()/2,
		   	// 	iY = e.clientY - this.offsetTop - $Drag.height()/2,	
		   	var iX = e.pageX - $(this).offset().left - $Drag.width()/2,
		   		iY = e.pageY - $(this).offset().top - $Drag.height()/2,	
		   		MaxX = $imgCon.width()-$Drag.width(),
		   		MaxY = $imgCon.height()-$Drag.height();
				
  	   	    /*这一部分可代替下面部分，判断最大最小值
		   	var DX = iX < MaxX ? iX > 0 ? iX : 0 : MaxX,
		   		DY = iY < MaxY ? iY > 0 ? iY : 0 : MaxY;
		   	$Drag.css({left:DX+'px',top:DY+'px'});	   		
		   	$showIMg.css({marginLeft:-3*DX+'px',marginTop:-3*DY+'px'});*/

		   	iX = iX > 0 ? iX : 0;
		   	iX = iX < MaxX ? iX : MaxX;
		   	iY = iY > 0 ? iY : 0;
		   	iY = iY < MaxY ? iY : MaxY;	
		   	$Drag.css({left:iX+'px',top:iY+'px'});	   		
		   	$showIMg.css({marginLeft:-multiple*iX+'px',marginTop:-multiple*iY+'px'});
		});
		$imgCon.mouseout(function(){
		   	$Drag.css('display','none');
			$show.css('display','none');
		});
	}
	$('#preview').magnifying();
	$('#spec-list li').hover(function(){
		$('#spec-list li').removeClass('img-hover');
		$(this).addClass('img-hover');
		var src = $(this).find('img').attr('src');
		$('#spec-img').attr('src',src);
		$('.zoomdiv img').attr('src',src);
	},function(){});
	// 点击轮播
	var count=0;
	var allwidth = $('#spec-list .lh li').length*58;
	$('#spec-list .lh').css({width:allwidth});
	var viewwidth = $('.spec-items').width();
	var morenum=(allwidth-viewwidth)/58;
	$('.spec-list .arrow-next').click(function(){
		if(!$(this).hasClass('disabled')){
			count++;
			if(count==morenum){
				$(this).addClass('disabled');
				$('.spec-list .arrow-prev').removeClass('disabled');
			}
			$('#spec-list .lh').stop().animate({"left":-count*58},200);
		}
	});
	$('.spec-list .arrow-prev').click(function(){
		if(!$(this).hasClass('disabled')){
			count--;
			if(count==0){
				$(this).addClass('disabled');
				$('.spec-list .arrow-next').removeClass('disabled');
			}
			$('#spec-list .lh').stop().animate({"left":-count*58},200);
		}
	});
	timer('.cd_hour','.cd_minute','.cd_second',new Date(2018,4,17,13,00,00));
	// 选地址
	var cities;
	$('#stock-address').hover(function(){
		var xhr = new XMLHttpRequest();
        var method = "get";
        var url = 'jdms/city.json';
        var asy = true;
        xhr.onreadystatechange = function(){
            if(xhr.readyState == 4){//判断当前到哪一步了，等到第4步
                if((xhr.status>=200&&xhr.status<300) || xhr.status== 304){//判断是否响应成功
                    var data = JSON.parse(xhr.responseText);
                    cities = data.citylist;
                }else{//响应失败
                    console.log('响应失败');
                }
            }
        }
        xhr.open(method,url,asy);
        xhr.send(null);

		$(this).find('.inner').addClass('border');
		$(this).find('.inner .head').find('.arrow').addClass('rotate');
		// 收起放下地址
		$('.address-select dt').click(function(){
			$('.address-select').toggleClass('clicked');
		});
		$('.address-tab .tab li').click(function(){
			var index = $(this).index();
			$(this).addClass('current').siblings().removeClass('current');
			$('.address-tab .tab-con .tab-item').eq(index).show().siblings().hide();
			// 选择省份三级联动
			$('.tab-item').eq(0).find('a').click(function(){
				var index1 = $('.tab-item').eq(0).find('a').index($(this));
				var val = $(this).text();
				$('.tab li').eq(0).text(val);
				$('.tab li').eq(1).text('请选择');
				$('.tab li').eq(1).addClass('current').siblings().removeClass('current');
				$('.address-tab .tab-con .tab-item').eq(1).show().siblings().hide();
				$('.tab li').eq(2).hide();
				$('.tab-con .tab-item').eq(1).empty();
		        var temp_html ='';
		        $.each(cities[index1].c,function(i,country){
		         	temp_html += "<li data-name='"+country.n+"'><a>"+country.n+"</a></li>";
		        });
		        $('.tab-con .tab-item').eq(1).append(temp_html);
		        // 选择市
				$('.tab-item').eq(1).find('a').click(function(){
					var index2 = $('.tab-item').eq(1).find('a').index($(this));
					if(index1 !=''){
							$('.tab-con .tab-item').eq(2).empty();
				        var city_html ='';
				        $.each(cities[index1].c[index2].a,function(i,dist){
				        	city_html += "<li data-name='"+dist.s+"'><a>"+dist.s+"</a></li>";
				        });
					}
			        $('.tab-con .tab-item').eq(2).append(city_html);
					var val = $(this).text();
					$('.tab li').eq(1).text(val);
					$('.tab li').eq(2).text('请选择');
					$('.tab li').eq(2).addClass('current').siblings().removeClass('current');
					$('.address-tab .tab-con .tab-item').eq(2).show().siblings().hide();
					$('.tab li').eq(2).show();
					// 选择县
					$('.tab-item').eq(2).find('a').click(function(){
						var val = $(this).text();
						$('.tab li').eq(2).text(val);
						var txt = $('.address-tab .tab li').eq(0).text()+" "+$('.address-tab .tab li').eq(1).text()+" "+$('.address-tab .tab li').eq(2).text();
						$('#stock-address .head .text').text(txt);
						$('#stock-address .inner').removeClass('border');
						$('#stock-address .inner .head').find('.arrow').removeClass('rotate');
					});
				});
			});
			// 二级联动
			$('.tab-item').eq(1).find('a').click(function(){
				var index2 = $('.tab-item').eq(1).find('a').index($(this));
				var tabtxt = $('.address-tab .tab li').eq(0).text();
				var index3;
				$('.tab-item li').each(function(i){
					if($('.tab-item li').eq(i).attr('data-name')==tabtxt){
						index3 = $('.tab-item li').index($(this));
					}
				});
				if(index3 !=''){
						$('.tab-con .tab-item').eq(2).empty();
			        var city_html ='';
			        $.each(cities[index3].c[index2].a,function(i,dist){
			        	city_html += "<li data-name='"+dist.s+"'><a>"+dist.s+"</a></li>";
			        });
				}
			    $('.tab-con .tab-item').eq(2).append(city_html);
				var val = $(this).text();
				$('.tab li').eq(1).text(val);
				$('.tab li').eq(2).text('请选择');
				$('.tab li').eq(2).addClass('current').siblings().removeClass('current');
				$('.address-tab .tab-con .tab-item').eq(2).show().siblings().hide();
				$('.tab li').eq(2).show();
				// 选择县
				$('.tab-item').eq(2).find('a').click(function(){
					var val = $(this).text();
					$('.tab li').eq(2).text(val);
					var txt = $('.address-tab .tab li').eq(0).text()+" "+$('.address-tab .tab li').eq(1).text()+" "+$('.address-tab .tab li').eq(2).text();
					$('#stock-address .head .text').text(txt);
					$('#stock-address .inner').removeClass('border');
					$('#stock-address .inner .head').find('.arrow').removeClass('rotate');
				});
			});
		});
		// 一级
		$('.tab-item').eq(2).find('a').click(function(){
			var val = $(this).text();
			$('.tab li').eq(2).text(val);
			var txt = $('.address-tab .tab li').eq(0).text()+" "+$('.address-tab .tab li').eq(1).text()+" "+$('.address-tab .tab li').eq(2).text();
			$('#stock-address .head .text').text(txt);
			$('#stock-address .inner').removeClass('border');
			$('#stock-address .inner .head').find('.arrow').removeClass('rotate');
		});
	},function(){
		$(window).bind("click",function(e){
			var target  = $(e.target);
			if(target.closest("#stock-address .content,#stock-address").length == 0){/*.closest()沿 DOM 树向上遍历，直到找到已应用选择器的一个匹配为止，返回包含零个或一个元素的 jQuery 对象。*/
				$('#stock-address .inner').removeClass('border');
				$('#stock-address .inner .head').find('.arrow').removeClass('rotate');
			}
			e.stopPropagation();
		});
	});	
	// 选择种类
	$('#choose-attrs .item').click(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
	});
	// 白条分期
	$('.baitiao-list').children().hover(function(){
		$(this).find('.baitiao-tips').removeClass('hide');
		$(this).find('.baitiao-text').removeClass('J-baitiao-text');
	},function(){
		$(this).find('.baitiao-tips').addClass('hide');
		$(this).find('.baitiao-text').addClass('J-baitiao-text');
	});
	$('.baitiao-list .item').click(function(){
		$('.baitiao-list .item a').css({'border-color':'#ccc'});
		$(this).find('.baitiao-tips').addClass('hide');
		$(this).find('a').css({'border-color':'#e3393c'});
	});
	// 加入购物车
	var thingnum = $('.buy-num').val();
	$('.buy-num').change(function(){
		var buyval=$('.buy-num').val();
		var reg =/^[1-9]\d*$/;
		if(!reg.exec(buyval) || buyval ==1){
			$('.buy-num').val('1');
			thingnum = $('.buy-num').val();
			$('.btn-add').removeClass('disabled');
			$('.btn-reduce').addClass('disabled');
		}else if(buyval>=199){
			$('.buy-num').val('199');
			thingnum = $('.buy-num').val();
			$('.btn-add').addClass('disabled');
			$('.btn-reduce').removeClass('disabled');
		}else{
			$('.btn-add').removeClass('disabled');
			$('.btn-reduce').removeClass('disabled');
			thingnum = $('.buy-num').val();
		}
		baitiao();
	});
	$('.btn-add').click(function(){
		thingnum++;
		if(thingnum >=199){
			thingnum=199;
			$('.btn-add').addClass('disabled');
			$('.buy-num').val('199');
		}else{
			$('.btn-reduce').removeClass('disabled');
			$('.buy-num').val(thingnum);
		}
		baitiao();
	});
	$('.btn-reduce').click(function(){
		thingnum--;
		if(thingnum <= 1){
			thingnum=1;
			$('.btn-reduce').addClass('disabled');
			$('.buy-num').val('1');
		}else{
			$('.btn-add').removeClass('disabled');
			$('.buy-num').val(thingnum);
		}
		baitiao();
	});
	function baitiao(){//根据购买数量显示分期数额
		$('#choose-baitiao .item').each(function(i){
			$('#choose-baitiao .item').eq(i).find('em').text((0.17*thingnum).toFixed(2));
			switch(i){
				case 1:$('#choose-baitiao .item').eq(i).find('i').text((11.47*thingnum).toFixed(2));
					break;
				case 2:$('#choose-baitiao .item').eq(i).find('i').text((5.82*thingnum).toFixed(2));
					break;
				case 3:$('#choose-baitiao .item').eq(i).find('i').text((2.99*thingnum).toFixed(2));
					break;
				case 4:$('#choose-baitiao .item').eq(i).find('i').text((1.58*thingnum).toFixed(2));
					break;
			}
		});
	}
	$('#choose-btns #InitCartUrl').click(function(){//点击加入购物车
		var buynum= parseInt($('#choose-btns #buy-num').val());
		var onum = parseInt($('#settleup-2014 #shopping-amount').text());
		$('#settleup-2014 #shopping-amount').text(parseInt(onum+buynum));
	});
	// 看了又看轮播图
	var height = parseInt($(this).find('.track-con').height());
	var allheight = parseInt($(this).find('.track-con ul').height());
	num = allheight/height;
	var clicknum=0;
	$('.sprite-up').click(function(){
		clicknum++;
		if(clicknum==num){
			clicknum=1;
			$('.track-con ul').css({'margin-top':'0'});
		}
		lang = -height*clicknum;
		$('.track-con ul').stop().animate({'marginTop':lang},300);
	});
	$('.sprite-down').click(function(){
		clicknum--;
		if(clicknum==-1){
			clicknum = num-2;
			$('.track-con ul').css({'margin-top':-(num-1)*height});
		}
		lang = -height*clicknum;
		$('.track-con ul').stop().animate({'marginTop':lang},300);
	});
	// 侧边栏图片hover
	$('.aside li').hover(function(){
		$(this).find('.p-name').css({bottom:'26px'});
	},function(){
		$(this).find('.p-name').css({bottom:'-42px'});
	});
	$('.pop-hot .tab-main li').click(function(){
		var index = $(this).index();
		$(this).addClass('current').siblings().removeClass('current');
		$('.pop-hot .tab-con').children().eq(index).removeClass('hide').siblings().addClass('hide');
	});

	// 详情中的加入购物车
	$('.detail .extra').hover(function(){
		$(this).find('.content').show();
		var buynum= parseInt($('#choose-btns #buy-num').val());
		$(this).find('.J-buy-num').text(buynum);
		$('.detail .extra').click(function(){
			var onum = parseInt($('#settleup-2014 #shopping-amount').text());
			$('#settleup-2014 #shopping-amount').text(parseInt(onum+buynum));
		});
	},function(){});
	// 详情tab
	$('#detail .tab-main li').click(function(){
		var index = $(this).index();
		if(index >=3){
			$('.detail .guarantee').hide();
			if(index >=4){
				$('.detail .comment').hide();
			}else{
				$('.detail .comment').show();
			}
		}else{
			$('.detail .guarantee').show();
		}
		$(this).addClass('current').siblings().removeClass('current');
		$('#detail .tab-con .item').eq(index).removeClass('hide').siblings().addClass('hide');
	});

	// 评论商品问答页数切换
	$('.ui-page').each(function(){
		$(this).find('a').not('.ui-pager-next,.ui-pager-prev').click(function(){
			var index = $(this).index();
			$(this).addClass('ui-page-curr').siblings().removeClass('ui-page-curr');
			if(index >=0){
				$(this).parent().find('.ui-pager-prev').css({display:'inline-block'});
			}
		});
		$(this).find('.ui-pager-next').click(function(){
			var num = $(this).parent().find('.ui-page-curr').index();
			if(num>=1){
				$(this).parent().find('.ui-pager-prev').css({display:'inline-block'});
			}
			$(this).parent().find('a').not('.ui-pager-next').eq(num+1).addClass('ui-page-curr').siblings().removeClass('ui-page-curr');
		});
		$(this).find('.ui-pager-prev').click(function(){
			var num = $(this).parent().find('.ui-page-curr').index();
			if(num-1 !=0){
				$(this).parent().find('a').not('.ui-pager-next').eq(num-1).addClass('ui-page-curr').siblings().removeClass('ui-page-curr');
			}
		});
	});
	
	// 浏览器滚动事件
	var scrollNum =0;
	$(window).scroll(function(){
		// 详情tab置顶
		var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
		if(scrollTop >940){
			$('#detail .tab-main,.popbox-inner').addClass('pro-detail-hd-fixed');
			$('.popbox .pro-detail-hd-fixed').hover(function(){
				$(this).find('.arrow').addClass('rotate');
				$(this).find('.mc').show();
			},function(){
				$(this).find('.arrow').removeClass('rotate');
				$(this).find('.mc').hide();
			});
		}else{
			$('#detail .tab-main,.popbox-inner').removeClass('pro-detail-hd-fixed');
		}
		// 加载商品介绍图片
		var linum = $('#J-detail-content li');
		if(linum.length<20){
			var lastBoxTop = $('#J-detail-content li').last().offset().top;
	        var clientH = document.documentElement.clientHeight/2 || document.body.clientHeight/2;
	        if(lastBoxTop < scrollTop+clientH){
	            loadData(function(data){
	             	appendABox(data[scrollNum++].src);
	            });
	        }
		}
	});
	function appendABox(imgPath){
		var lidom = document.createElement('li');
		var imgdom = document.createElement('img');
		imgdom.src = imgPath;
		lidom.appendChild(imgdom);
		$('#J-detail-content div').append(lidom);
	}
});

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

//倒计时函数:next结束时间
function timer(hourname,minutename,secondname,next){
	var times= setInterval(function(){
		var time = [86400000,3600000,60000,1000];
		var now = new Date();
		// var next = new Date(2017,4,14,13,00,00);
		var ms = next.getTime()-now.getTime();
		if(ms>=0){
		var days = parseInt(ms/time[0]);
		var hours = parseInt((ms-days*time[0])/time[1]);
		if(hours<10){hours = '0'+hours;}
		var minutes = parseInt((ms-days*time[0]-hours*time[1])/time[2]);
		if(minutes<10){minutes = '0'+minutes;}
		var seconds =parseInt((ms-days*time[0]-hours*time[1]-minutes*time[2])/time[3]);
		if(seconds<10){seconds = '0'+seconds;}
		$(hourname).text(hours);
		$(minutename).text(minutes);
		$(secondname).text(seconds);			
		}else{
			clearInterval(times);
		}	
	},1000);
}
function loadData (fn) {
    //通过ajax，异步读取新图片数据
    var xhr = new XMLHttpRequest();
    var method = "get";
    var url = 'moreimg.json';
    var asy = true;
    xhr.onreadystatechange = function(){
        if(xhr.readyState == 4){//判断当前到哪一步了，等到第4步
            if((xhr.status>=200&&xhr.status<300) || xhr.status== 304){//判断是否响应成功
                var data = JSON.parse(xhr.responseText);
                var imgs = data.imgs;
                fn(imgs);
            }else{//响应失败
                console.log('响应失败');
            }
        }
    }
    xhr.open(method,url,asy);
    xhr.send(null);
}
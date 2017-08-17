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
	// 选地址
	var cities;
	$('#jdarea').hover(function(){
		var xhr = new XMLHttpRequest();
        var method = "get";
        var url = 'city.json';
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

		$(this).find('.ui-area-content-wrap').show();
		$('.ui-area-tab .ui-switchable-item').click(function(){
			var index = $(this).index();
			$(this).addClass('ui-area-current').siblings().removeClass('ui-area-current');
			$('.ui-area-content .ui-area-content-list').eq(index).show().siblings().hide();
			// 选择省份三级联动
			$('.ui-area-content-list').eq(0).find('a').click(function(){
				var index1 = $('.ui-area-content-list').eq(0).find('a').index($(this));
				var val = $(this).text();
				$('.ui-switchable-item').eq(0).find('em').text(val);
				$('.ui-switchable-item').eq(1).find('em').text('请选择');
				$('.ui-switchable-item').eq(1).addClass('ui-area-current').siblings().removeClass('ui-area-current');
				$('.ui-area-content .ui-area-content-list').eq(1).show().siblings().hide();
				$('.ui-switchable-item').eq(2).hide();
				$('.ui-area-content .ui-area-content-list').eq(1).empty();
		        var temp_html ='';
		        $.each(cities[index1].c,function(i,country){
		         	temp_html += "<li data-name='"+country.n+"'><a>"+country.n+"</a></li>";
		        });
		        $('.ui-area-content .ui-area-content-list').eq(1).append(temp_html);
		        // 选择市
				$('.ui-area-content-list').eq(1).find('a').click(function(){
					var index2 = $(this).index();
					console.log(index2);
					if(index1 !=''){
							$('.ui-area-content .ui-area-content-list').eq(2).empty();
				        var city_html ='';
				        $.each(cities[index1].c[index2].a,function(i,dist){
				        	city_html += "<li data-name='"+dist.s+"'><a>"+dist.s+"</a></li>";
				        });
					}
			        $('.ui-area-content .ui-area-content-list').eq(2).append(city_html);
					var val = $(this).text();
					$('.ui-switchable-item').eq(1).find('em').text(val);
					$('.ui-switchable-item').eq(2).find('em').text('请选择');
					$('.ui-switchable-item').eq(2).addClass('ui-area-current').siblings().removeClass('ui-area-current');
					$('.ui-area-content .ui-area-content-list').eq(2).show().siblings().hide();
					$('.ui-switchable-item').eq(2).show();
					// 选择县
					$('.ui-area-content-list').eq(2).find('a').click(function(){
						var val = $(this).text();
						$('.ui-switchable-item').eq(2).find('em').text(val);
						var txt = $('.ui-switchable-item').eq(0).find('em').text()+" "+$('.ui-switchable-item').eq(1).find('em').text()+" "+$('.ui-switchable-item').eq(2).find('em').text();
						$('.ui-area-text').text(txt);
						$('.ui-area-content-wrap').hide();
					});
				});
			});
			// 二级联动
			$('.ui-area-content-list').eq(1).find('a').click(function(){
				var index2 = $('.ui-area-content-list').eq(1).find('a').index($(this));
				var tabtxt = $('.ui-switchable-item').eq(0).find('em').text();
				var index3;
				$('.ui-area-content-list li').each(function(i){
					if($('.ui-area-content-list li').eq(i).attr('data-name')==tabtxt){
						index3 = $('.ui-area-content-list li').index($(this));
					}
				});
				if(index3 !=''){
						$('.ui-area-content-list').eq(2).empty();
			        var city_html ='';
			        $.each(cities[index3].c[index2].a,function(i,dist){
			        	city_html += "<li data-name='"+dist.s+"'><a>"+dist.s+"</a></li>";
			        });
				}
			    $('.ui-area-content-list').eq(2).append(city_html);
				var val = $(this).text();
				$('.ui-switchable-item').eq(1).find('em').text(val);
				$('.ui-switchable-item').eq(2).find('em').text('请选择');
				$('.ui-switchable-item').eq(2).addClass('ui-area-current').siblings().removeClass('ui-area-current');
				$('.ui-area-content-list').eq(2).show().siblings().hide();
				$('.ui-switchable-item').eq(2).show();
				// 选择县
				$('.ui-area-content-list').eq(2).find('a').click(function(){
					var val = $(this).text();
					$('.ui-switchable-item').eq(2).find('em').text(val);
					var txt = $('.ui-switchable-item').eq(0).find('em').text()+" "+$('.ui-switchable-item').eq(1).find('em').text()+" "+$('.ui-switchable-item').eq(2).find('em').text();
					$('.ui-area-text').text(txt);
					$('.ui-area-content-wrap').hide();
				});
			});
		});
		// 一级
		$('.ui-area-content-list').eq(2).find('a').click(function(){
			var val = $(this).text();
			$('.ui-switchable-item').eq(2).find('em').text(val);
			var txt = $('.ui-switchable-item').eq(0).find('em').text()+" "+$('.ui-switchable-item').eq(1).find('em').text()+" "+$('.ui-switchable-item').eq(2).find('em').text();
			$('.ui-area-text').text(txt);
			$('.ui-area-content-wrap').hide();
		});
	},function(){
		$('.ui-area-content-wrap').hide();
	});

	//修改商品数量
	$('.item-form').hover(function(){
		change($(this).find('.itxt'),$(this).find('.increment'),$(this).find('.decrement'),$(this).find('.p-sum'),$(this).find('.p-price'));
	},function(){});
	function change(buynum,btnadd,btnreduce,sum,price){
		var thingnum = $(buynum).val();
		$(buynum).change(function(){
			var buyval=$(buynum).val();
			var reg =/^[1-9]\d*$/;
			if(!reg.exec(buyval) || buyval ==1){
				$(buynum).val('1');
				thingnum = $(buynum).val();
				$(btnadd).removeClass('disabled');
				$(btnreduce).addClass('disabled');
			}else if(buyval>=199){
				$(buynum).val('199');
				thingnum = $(buynum).val();
				$(btnadd).addClass('disabled');
				$(btnreduce).removeClass('disabled');
			}else{
				$(btnadd).removeClass('disabled');
				$(btnreduce).removeClass('disabled');
				thingnum = $(buynum).val();
			}
			var dprice = $(price).find('strong').text();
			console.log(thingnum);
			$(sum).find('strong').text(parseFloat(thingnum*(dprice.slice(1,dprice.length-1))).toFixed(2));
		});
		$(btnadd).click(function(){
			thingnum++;
			if(thingnum >=199){
				thingnum=199;
				$(btnadd).addClass('disabled');
				$(buynum).val('199');
			}else{
				$(btnreduce).removeClass('disabled');
				$(buynum).val(thingnum);
			}
			var dprice = $(price).find('strong').text();
			console.log(thingnum);
			$(sum).find('strong').text(parseFloat(thingnum*(dprice.slice(1,dprice.length-1))).toFixed(2));
		});
		$(btnreduce).click(function(){
			thingnum--;
			if(thingnum <= 1){
				thingnum=1;
				$(btnreduce).addClass('disabled');
				$(buynum).val('1');
			}else{
				$(btnadd).removeClass('disabled');
				$(buynum).val(thingnum);
			}
			var dprice = $(price).find('strong').text();
			$(sum).find('strong').text(parseFloat(thingnum*(dprice.slice(1,dprice.length-1))).toFixed(2));
		}); 
	}

	// 勾选商品
	if($('.cart-tbody .item-item .p-checkbox').is(':checked')==true){
		console.log(1111111);
	}
});
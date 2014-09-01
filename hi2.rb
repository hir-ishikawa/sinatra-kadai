require 'haml'
require 'sinatra'

set :bind, '0.0.0.0'
set :public_folder, File.dirname(__FILE__) + '/static'

get '/coffee' do
	haml :coffee
end

post '/coffee' do
	cofname = params['cofname'].to_i
	STDERR.puts cofname
	if cofname ==1
		@coffee = "モカをお作りします…"
	elsif cofname ==2
		@coffee = "キリマンジャロをお作りします…"
	elsif cofname ==3
		@coffee = "アメリカンをお作りします…"
	elsif cofname ==4
		@coffee = "エスプレッソをお作りします…"
	elsif cofname ==5
		@coffee = "カプチーノをお作りします…"
	elsif cofname ==6
		@coffee = "カフェラテをお作りします…"
	else
		@coffee = "何か注文して下さい…"
	end
	haml :coffee_kekka
	
	#以下　何杯注文するかのプログラム(未完)
	#cofnum = params['cofnum'].to_i
	#STDERR.puts cofnum
	#if cofnum ==0
	#	@mkcoffee = "0杯作りました。"
	#else
	#	@mkcoffee = "在庫切れです…!!!"
	#end
	#haml :coffee_make
end

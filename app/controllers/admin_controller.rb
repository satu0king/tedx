class AdminController < ApplicationController

	def show
	end
	def start
		changeState(0)
		render plain: "success"

	end
	def reset
		changeState(1)
		render plain: "success"
	end
	def pause
		changeState(2)
		render plain: "success"
	end
	def resume
		changeState(3)
		render plain: "success"
	end

	def timeout
		res = ""
		File.open("public/state.txt").each do |line|
			res += line
		end
		render plain: res
	end

	private

	def changeState(state)
		res = ""
		File.open("public/state.txt").each do |line|
			res += line
		end

		res = res.to_i
		res = (res/4 + 1)*4 + state
		File.open("public/state.txt","w") do |line|
			line.puts res
		end
	end

end

class StaticPagesController < ApplicationController
	require 'googlecharts'

  def home
		# @sales = Sale.all
		@item_types = Sale.select(:item_type).map(&:item_type).uniq
		@countries = Sale.select(:country).map(&:country).uniq

		@country_count = Sale.group(:country).count
		@chart = Gchart.line(  :size => '200x300', 
              :title => "example title",
              :bg => 'efefef',
              :legend => ['first data set label', 'second data set label'],
              :data => [10, 30, 120, 45, 72])
  end

  def help
		@countries = Sale.group(:country).count
  end

	def about
		@countries = Sale.group(:country).count

		@countries.each do |key, value|
			tmp = Array.new
			tmp[0] = value
			tmp[1] = Sale.where(country: key).sum(:total_profit)
			@countries[key] = tmp
		end
=begin
		@countries.each do |coun|
			tmp = Array.new
			tmp[0] = Sale.where(country: coun[0]).sum(:total_profit)
			index = @countries.index(coun)
			# coun.concat(tmp)
			# @countries[] = (coun.concat(tmp))
			byebug
		end
=end
	end

	def maps
		@countries = Sale.group(:country).count

		@countries.each do |key, value|
			tmp = Array.new
			tmp[0] = value
			tmp[1] = Sale.where(country: key).sum(:total_profit)
			@countries[key] = tmp
		end
	end

	def total_profits_table
		@countries = Sale.group(:country).count

		@countries.each do |key, value|
			tmp = Array.new
			tmp[0] = value
			tmp[1] = Sale.where(country: key).sum(:total_profit)
			@countries[key] = tmp
		end
	end

	def sales_channel_info
		@sales_channels = Sale.group(:sales_channel).count
		@regions = Sale.group(:region).count
	end

end

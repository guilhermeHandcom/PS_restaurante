class FaturamentoController < ApplicationController
	def index
		if !params[:data_inicio].blank?
			if !params[:data_fim].blank?
				@comandas = Comanda.all.where('DATE(created_at) >= ? AND DATE(created_at) <= ?', Date.parse(params[:data_inicio]), Date.parse(params[:data_fim]))
			else
				@comandas = Comanda.all.where('DATE(created_at) >= ?', Date.parse(params[:data_inicio]))
			end
		elsif !params[:data_fim].blank?
				@comandas = Comanda.all.where('DATE(created_at) <= ?', Date.parse(params[:data_fim]))
		else
			@comandas = Comanda.all
		end
	end
end

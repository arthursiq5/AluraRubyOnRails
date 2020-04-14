class ProdutosController < ApplicationController

    before_action :set_produto, only: [:edit,  :update, :destroy]

    def index
        @produtos = Produto.order(nome: :desc).limit 2
        @produto_com_desconto = Produto.order(:preco).limit 1
    end

    def create
        @produto = Produto.new produto_params
        if @produto.save
            flash[:notice] = "Produto salvo com sucesso"
            redirect_to root_path
        else
            render :new
        end
    end
    
    def destroy
        @produto.destroy
        
        redirect_to root_path
    end
    
    def edit
        @departamentos = Departamento.all
        render :new
    end
    
    def update
        if @produto.update produto_params
            flash[:notice] = "Produto atualizado com sucesso"
            redirect_to root_path
        else
            @departamentos = Departamento.all
            render :new

        end
    end

    def busca
        @nome = params[:nome]
        @produtos = Produto.where "nome like ?", "%#{@nome}%"
    end

    def new
        @produto = Produto.new
        @departamentos = Departamento.all
    end

    def produto_params
        params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :departamento_id)
    end

    def set_produto
        @produto =  Produto.find(params[:id])
    end
end

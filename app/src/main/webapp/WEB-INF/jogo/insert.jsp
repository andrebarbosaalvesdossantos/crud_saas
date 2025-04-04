<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Novo Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <div class="container">
            <h1>Novo Jogo</h1>
            <form action="/jogo/insert" method="post">
                <div class = "form-group">
                    <label for="titulo">Título:</label>
                    <input type="text" name="titulo" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="categoria">Categoria:</label>
                    <select name="categoria" class="form-select">
                        <c:forEach var="c" items="${categorias}">
                            <option value="${c.id}">${c.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="plataforma">Plataformas:</label>
                    <c:forEach var="plataforma" items="${plataformas}">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="plataformas" value="${p.id}" id="${p.id}"/>
                        <label class="custom-control-label" for="${p.id}">${p.nome}</label>
                    </div>
                    </c:forEach>
                </div>
                <br />
                <a href="/jogos/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>
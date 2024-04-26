<%@ page import="java.util.Map" %>
<%@ page import="beans.Utilisateur" %>

<%@ include file ="inc/header.jsp" %>
<%
	Boolean status =(Boolean) request.getAttribute("status");
	String statusMessage =(String) request.getAttribute("statusMessage");
	Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
	Map<String, String> erreurs = (Map<String, String>) request.getAttribute("erreurs");

%>
    <section>  
    	<%
    		if(statusMessage !=null)
    		{%>
    			<div class="alert alert- <%= status ? "success" : "danger" %>">
        		<%= statusMessage %>
        	</div><%
    		} 	
    	%>
    	
        <h1 id ="titre-principal">Ajout d'un utilisateur</h1>
        <form class ="main" method="post">
            <div class="formItem">
                <label>Nom</label>
                <input type="text" name="nom" value="<%= (utilisateur != null && utilisateur.getNom()!= null)  ? utilisateur.getNom() : "" %>">
                <%
                	if(erreurs != null && erreurs.get("nom") != null)
                	{%>
                		<span class="errorText">
                			<%= erreurs.get("nom") %>
                		</span><%
                	}
                %>
            </div>
            <div class="formItem">
                <label>Prenom</label>
                <input type="text" name="prenom" value="<%= (utilisateur != null && utilisateur.getPrenom()!= null)  ? utilisateur.getPrenom() : "" %>"> 
                <%
                	if(erreurs != null && erreurs.get("prenom") != null)
                	{%>
                		<span class="errorText">
                			<%= erreurs.get("prenom") %>
                		</span><%
                	}
                %>
            </div>
            <div class="formItem">
                <label>Login</label>
                <input type="text" name="login" 
                		value="<%= (utilisateur != null && utilisateur.getLogin()!= null)  ? utilisateur.getLogin() : "" %>">
                <%
                	if(erreurs != null && erreurs.get("login") != null)
                	{%>
                		<span class="errorText">
                			<%= erreurs.get("login") %>
                		</span><%
                	}
                %>
            </div>
            <div class="formItem">
                <label>Password</label>
                <input type="password" name="password">
                 <%
                	if(erreurs != null && erreurs.get("password") != null)
                	{%>
                		<span class="errorText">
                			<%= erreurs.get("password") %>
                		</span><%
                	}
                %>
            </div>
            <div class="formItem">
                <label>Password (Confirmation)</label>
                <input type="password" name="passwordBis">
                 <%
                	if(erreurs != null && erreurs.get("passwordBis") != null)
                	{%>
                		<span class="errorText">
                			<%= erreurs.get("passwordBis") %>
                		</span><%
                	}
                %>
            </div>
            <div class="formItem">
                <input type="submit" value="Ajouter">
            </div>
        </form>
    </section>
<%@include file="inc/footer.jsp" %>
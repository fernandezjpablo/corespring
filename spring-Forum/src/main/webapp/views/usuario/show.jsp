<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="background: #48762A;">
	<div class="chamada row">

		<div class="twelve columns">
			<h3 style="color: white;">Detalle del Usuario</h3>
		</div>

	</div>
</div>
<div class="row">
	<h4>Datos b&aacute;sicos</h4>
</div>
<br />
<div class="row">
	<div class="two columns">
		<b>Avatar:</b>
	</div>
	<div class="ten columns">
		<img style="width: 128px; height: 128px;"
			src='<c:url value="/usuario/avatar/${usuario.login}"/>' />
	</div>
</div>

<div class="row">
	<div class="two columns">
		<b>Nombre:</b>
	</div>
	<div class="ten columns">${usuario.nombre}</div>
</div>
<br />
<div class="row">
	<div class="two columns">
		<b>Login:</b>
	</div>
	<div class="ten columns">${usuario.login}</div>
</div>
<br />
<div class="row">
	<div class="two columns">
		<b>E-mail:</b>
	</div>
	<div class="ten columns">
		<a href="mailto:${usuario.email}">${usuario.email}</a>
	</div>
</div>
<br />
<div class="row">
	<div class="two columns">
		<b>Twitter:</b>
	</div>
	<div class="ten columns">
		<a href="http://www.twitter.com/${usuario.twitter}">${usuario.twitter}</a>
	</div>
</div>
<br />
<div class="row">
	<h4>&Uacute;ltimos posts</h4>
	<a href="javascript:exporPosts('${usuario.login}')">Mostrar posts</a>
	<div id="posts"></div>
</div>

<script type="text/javascript">
	function exporPosts(login) {
		var url = "<c:url value="/usuario/posts/"/>" + login
		$("#posts").load(url)
	}
</script>
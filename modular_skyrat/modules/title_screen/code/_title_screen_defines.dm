#define DEFAULT_TITLE_MAP_LOADTIME (150 SECONDS)

#define DEFAULT_TITLE_SCREEN_IMAGE 'modular_nekoma/icons/title_screen/testscreen.png'
#define DEFAULT_TITLE_LOADING_SCREEN 'modular_nekoma/icons/title_screen/pyramidgif.gif'

#define TITLE_PROGRESS_CACHE_FILE "data/progress_cache.json"
#define TITLE_PROGRESS_CACHE_VERSION "2"

#define DEFAULT_TITLE_HTML {"
	<html>
		<head>
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<style type='text/css'>
				@font-face {
					font-family: "Monofonto-Regular";
					font-style: normal;
					font-weight: 500;
					font-display: block;
					src: url("monofonto_rg.ttf");
					}
				@font-face {
					font-family: "Monofonto-Regular";
					src: url("monofonto_rg.ttf");
				}
				body,
				html {
					margin: 0;
					overflow: hidden;
					font-family: "Monofonto-Regular";
					text-align: center;
					background-color: #000000;
					padding-top: 5vmin;
					-ms-user-select: none;
					cursor: default;
				}

				img {
					border-style:none;
				}

				.bg {
					position: absolute;
					width: auto;
					height: 100vmin;
					min-width: 100vmin;
					min-height: 100vmin;
					top: 50%;
					left:50%;
					transform: translate(-50%, -50%);
					z-index: 0;
				}

				.container_terminal {
					position: absolute;
					top: calc(90% - 3vmin);
					left: calc(50% - 450px);
					height: 3vmin;
					width: 900px;
					overflow: clip;
					box-sizing: border-box;
					z-index: 1;
				}

				.terminal_text {
					font-family: "Monofonto-Regular";
					font-weight: 500;
					src: url("monofonto_rg.ttf");
					display: inline-block;
					text-decoration: none;
					width: 100%;
					text-align: left;
					color:#F1B132;
					margin-right: 0%;
					margin-top: 0px;
					font-size: 2vmin;
				}

				.container_progress {
					position: absolute;
					box-sizing: border-box;
					top: 90%;
					left: calc(50% - 450px);
					height: 72px;
					width: 900px;
					border-top: 4px solid #ffb641;
					border-bottom: 4px solid #ffb641;
					border-left: 4px solid #ffb641;
					border-right: 4px solid #ffb641;
					padding: 4px;
					background-color: #000000;
				}

				.progress_bar {
					width: 0%;
					height: 100%;
					background-image: url("https://i.gyazo.com/16f556464e91e03485dd4a0cfe3fe9e1.gif");
					background-position: center right;
					background-color: #000000;
				}

				@keyframes fade_out {
					to {
						opacity: 0;
					}
				}

				.fade_out {
					animation: fade_out 2s both;
				}

				.container_nav {
					position: absolute;
					box-sizing: border-box;
					width: 90vmin;
					min-height: 10vmin;
					top: calc(50% + 22.5vmin);
					left:50%;
					transform: translate(-50%, -50%);
					z-index: 1;
					border: none;
					border-radius: none;
					box-shadow: none;
					background: none;
					opacity: 0%;
					padding: 1em;
				}

				.container_nav hr {
					height: 2px;
					background-color: #eecdcd;
					border: none;
					box-shadow: 2px 2px black;
				}

				.menu_button {
					display: block;
					box-sizing: border-box;
					font-family: "Monofonto-Regular";
					font-weight: regular;
					text-decoration: none;
					font-size: 4vmin;
					text-shadow: 2px 2px black;
					line-height: 4vmin;
					width: 100%;
					text-align: center;
					color: #e6a647;
					height: 4vmin;
					padding-left: 5vmin;
					letter-spacing: 1px;
					cursor: pointer;
					white-space: nowrap;
					overflow: hidden;
				}

				.menu_button:hover {
					padding-left: 0px;
					color: red;
				}

				.menu_button:active {
					padding-left: 0px;
					transform: translate(2px, 2px);
				}

				.menu_button:hover::before {
					content: "☞";
					text-align: center;
					width: 5vmin;
					display: inline-block;
				}

				@keyframes pulse_button {
					0% {transform: translateX(0px);}
					100% {transform: translateX(2px);}
				}

				.menu_button:active::before {
					content: "☛";
					text-align: center;
					width: 5vmin;
					animation: pulse_button 0.25s infinite alternate;
				}

				@keyframes pollsbox {
					0% {color: #CDEEE1;}
					50% {color: #f80;}
				}

				.menu_newpoll {
					animation: pollsbox 2s step-start infinite;
					padding-left: 0px;
				}

				.menu_newpoll::before {
					content: "→";
					text-align: center;
					width: 5vmin;
					display: inline-block;
				}

				.menu_newpoll::after {
					content: "←";
					text-align: center;
					width: 5vmin;
					display: inline-block;
				}

				.container_notice {
					position: absolute;
					box-sizing: border-box;
					width: auto;
					padding-top: 1vmin;
					top: calc(50% - 10vmin);
					left:50%;
					transform: translate(-50%, -50%);
					z-index: 1;
				}

				.menu_notice {
					display: inline-block;
					font-family: "Monofonto-Regular";
					font-weight: lighter;
					text-decoration: none;
					width: 100%;
					text-align: left;
					color: red;
					text-shadow: 1px 0px black, -1px 0px black, 0px 1px black, 0px -1px black, 2px 0px black, -2px 0px black, 0px 2px black, 0px -2px black;
					margin-right: 0%;
					margin-top: 0px;
					font-size: 3vmin;
					line-height: 2vmin;
				}

				.unchecked {
					color: #F44;
				}

				.checked {
					color: #4F4;
				}
			</style>
		</head>
		<body>
			"}

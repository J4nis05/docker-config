if(!self.define){let s,e={};const i=(i,n)=>(i=new URL(i+".js",n).href,e[i]||new Promise((e=>{if("document"in self){const s=document.createElement("script");s.src=i,s.onload=e,document.head.appendChild(s)}else s=i,importScripts(i),e()})).then((()=>{let s=e[i];if(!s)throw new Error(`Module ${i} didn’t register its module`);return s})));self.define=(n,l)=>{const r=s||("document"in self?document.currentScript.src:"")||location.href;if(e[r])return;let a={};const o=s=>i(s,r),c={module:{uri:r},exports:a,require:o};e[r]=Promise.all(n.map((s=>c[s]||o(s)))).then((s=>(l(...s),a)))}}define(["./workbox-3625d7b0"],(function(s){"use strict";self.skipWaiting(),s.clientsClaim(),s.precacheAndRoute([{url:"assets/AddModal.8c999130.js",revision:null},{url:"assets/AddModal.a7acb8fe.css",revision:null},{url:"assets/AppPreferences.977b8ef2.js",revision:null},{url:"assets/ChangeLocationModal.05a17fea.js",revision:null},{url:"assets/ConfirmDeleteModal.ce55423f.js",revision:null},{url:"assets/ConfirmShutdownModal.4622779e.js",revision:null},{url:"assets/CreateCategoryDialog.0fe7da0a.js",revision:null},{url:"assets/CreateTagDialog.ab1f77c4.js",revision:null},{url:"assets/Dashboard.82f6fc8e.js",revision:null},{url:"assets/Dashboard.e7b5a5bf.css",revision:null},{url:"assets/FeedForm.53597542.js",revision:null},{url:"assets/FullScreenModal.adc180e8.js",revision:null},{url:"assets/index.11f62f8f.js",revision:null},{url:"assets/index.12e5dbd2.css",revision:null},{url:"assets/index.6ffd9753.css",revision:null},{url:"assets/Login.69cdb35a.js",revision:null},{url:"assets/MagnetHandler.9bb61cb2.js",revision:null},{url:"assets/MatchingArticles.7347a2db.js",revision:null},{url:"assets/Modal.1c0dbfc6.js",revision:null},{url:"assets/PluginManager.fb43d1b9.js",revision:null},{url:"assets/RenameModal.c311a6f7.js",revision:null},{url:"assets/RssArticles.070db6b5.css",revision:null},{url:"assets/RssArticles.5d5323cb.js",revision:null},{url:"assets/RuleForm.76a6156b.js",revision:null},{url:"assets/SearchModal.65d2ef8b.css",revision:null},{url:"assets/SearchModal.f5eacae1.js",revision:null},{url:"assets/Settings.65d0e537.js",revision:null},{url:"assets/Settings.6925c43c.css",revision:null},{url:"assets/ShareLimitInput.2ac2924f.js",revision:null},{url:"assets/ShareLimitModal.7a2661c9.css",revision:null},{url:"assets/ShareLimitModal.f5e557ec.js",revision:null},{url:"assets/SpeedLimitModal.30ad59b1.js",revision:null},{url:"assets/TorrentDetail.179007cc.css",revision:null},{url:"assets/TorrentDetail.69cd531a.js",revision:null},{url:"assets/VCheckbox.3f16e89f.js",revision:null},{url:"assets/VCheckbox.9020f9ce.css",revision:null},{url:"assets/VContainer.8c178cc9.js",revision:null},{url:"assets/VDataTable.ce66ac9d.js",revision:null},{url:"assets/VDataTable.d676ab1c.css",revision:null},{url:"assets/VDialog.1c2aa677.css",revision:null},{url:"assets/VDialog.a8b9b171.js",revision:null},{url:"assets/VForm.85e44f31.js",revision:null},{url:"assets/VSwitch.88ecae5e.css",revision:null},{url:"assets/VSwitch.e87cd435.js",revision:null},{url:"assets/VTabItem.6d2ee3b7.css",revision:null},{url:"assets/VTabItem.90d3998f.js",revision:null},{url:"assets/VTextarea.cd59b905.js",revision:null},{url:"assets/VTextarea.eb1b260f.css",revision:null},{url:"assets/vue.7fbf5199.js",revision:null},{url:"favicon.ico",revision:"33590c4e1f08d767c3290b96f00a91ee"},{url:"icons/android-chrome-192x192.png",revision:"d0419aec44c074ae022a0052821a545d"},{url:"icons/android-chrome-512x512.png",revision:"5e8e59e9954cf4c49d252fdd6e2c1fc1"},{url:"icons/android-chrome-maskable-192x192.png",revision:"577770f3910bcea8b215d408285c283f"},{url:"icons/android-chrome-maskable-512x512.png",revision:"a5c84260cf16b4562102ddf5069d4832"},{url:"icons/apple-touch-icon.png",revision:"998f96b230c37650d3a21c59e90dcc15"},{url:"icons/favicon-16x16.png",revision:"818e575cb13df1e1d852c21e22c93556"},{url:"icons/favicon-32x32.png",revision:"728c786ff66b557a25a8941300acfd43"},{url:"icons/msapplication-icon-144x144.png",revision:"90c0ad433d634194c32b4b0e05103cd3"},{url:"icons/safari-pinned-tab.svg",revision:"2de763e60123a9b2398e4b03c42340a5"},{url:"img/icons/favicon.svg",revision:"2de763e60123a9b2398e4b03c42340a5"},{url:"index.html",revision:"8023483d079f05f9b7d99df1beb1c117"},{url:"registerSW.js",revision:"402b66900e731ca748771b6fc5e7a068"},{url:"favicon.ico",revision:"33590c4e1f08d767c3290b96f00a91ee"},{url:"robots.txt",revision:"b6216d61c03e6ce0c9aea6ca7808f7ca"},{url:"./icons/android-chrome-192x192.png",revision:"d0419aec44c074ae022a0052821a545d"},{url:"./icons/android-chrome-512x512.png",revision:"5e8e59e9954cf4c49d252fdd6e2c1fc1"},{url:"./icons/android-chrome-maskable-192x192.png",revision:"577770f3910bcea8b215d408285c283f"},{url:"./icons/android-chrome-maskable-512x512.png",revision:"a5c84260cf16b4562102ddf5069d4832"},{url:"./icons/apple-touch-icon.png",revision:"998f96b230c37650d3a21c59e90dcc15"},{url:"./icons/safari-pinned-tab.svg",revision:"2de763e60123a9b2398e4b03c42340a5"},{url:"./icons/msapplication-icon-144x144.png",revision:"90c0ad433d634194c32b4b0e05103cd3"},{url:"manifest.webmanifest",revision:"e78d796e50baff390ac5cbb3b0091620"}],{}),s.cleanupOutdatedCaches(),s.registerRoute(new s.NavigationRoute(s.createHandlerBoundToURL("index.html")))}));

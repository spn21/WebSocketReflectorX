import{d as a,o as c,c as i,a as e,r as w,u as f,b as r,w as p,v as m,e as x,f as b,l as g,g as v}from"./index-591f813d.js";const k={xmlns:"http://www.w3.org/2000/svg","xmlns:xlink":"http://www.w3.org/1999/xlink",viewBox:"0 0 24 24"},L=e("g",{fill:"none"},[e("path",{d:"M5.694 12L2.299 3.27c-.236-.607.356-1.188.942-.981l.093.039l18 9a.75.75 0 0 1 .097 1.284l-.097.058l-18 9c-.583.291-1.217-.245-1.065-.848l.03-.095L5.694 12L2.299 3.27L5.694 12zM4.402 4.54l2.61 6.71h6.627a.75.75 0 0 1 .743.648l.007.102a.75.75 0 0 1-.649.743l-.101.007H7.01l-2.609 6.71L19.322 12L4.401 4.54z",fill:"currentColor"})],-1),R=[L],C=a({name:"Send24Regular",render:function(t,n){return c(),i("svg",k,R)}}),M={class:"flex-1 flex flex-col justify-center items-center"},S=["src"],V=e("h1",{class:"self-center text-xl mt-4 font-bold"},"WebSocket Reflector X",-1),B={class:"input-group p-6 max-w-xl"},U=e("div",{class:"h-12"},null,-1),j=a({__name:"HomeView",setup(u){const t=w(""),n=v(),l=f(),d=o=>{try{let s=new URL(o);return!(s.protocol!=="ws:"&&s.protocol!=="wss:")}catch{return!1}},_=()=>{d(t.value)?b("add_ws_connection",{addr:t.value}).then(()=>{t.value="",n.push("/connections")}).catch(o=>{l.showMessage("error",o,5e3)}):l.showMessage("error","Invalid URL",5e3)};return(o,s)=>(c(),i("div",M,[e("img",{alt:"WSRX",src:r(g),class:"w-24 h-24"},null,8,S),V,e("div",B,[p(e("input",{class:"input bg-base-content/5 backdrop-blur mt-8 flex-1",placeholder:"[ws/wss]://...","onUpdate:modelValue":s[0]||(s[0]=h=>t.value=h)},null,512),[[m,t.value]]),e("button",{class:"btn bg-base-content/5 backdrop-blur mt-8 border-none",onClick:_},[x(r(C),{class:"w-6 h-6"})])]),U]))}});export{j as default};
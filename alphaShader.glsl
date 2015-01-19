<script id="fs" type="x-shader/x-fragment">
    uniform sampler2D iChannel0;

    varying vec2 vUv;  
    varying vec4 vColor;
    void main() {
        vec4 zerovec = vec4(0.,0.,1.,1.);
        vec2 uv = vUv;
        vec4 tex1 = texture2D( iChannel0,  uv);
        float radius = sqrt(pow(uv.x - .5,2.) + pow(uv.y-.5,2.));
        if (radius < 0.45)
            gl_FragColor = tex1;
        else
            gl_FragColor = zerovec;
    }

</script>
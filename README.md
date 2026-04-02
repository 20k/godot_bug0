Crashes with the following on d3d12 only. Windows 10 (up to date), rx 6700xt, on 26.3.1 (latest as of this commit)

```
E 0:00:00:571   pipeline.gd:12 @ _ready(): Create(Compute)PipelineState failed with error 0x80070057.
  <C++ Error>   Condition "!((HRESULT)(res) >= 0)" is true. Returning: PipelineID()
  <C++ Source>  drivers/d3d12/rendering_device_driver_d3d12.cpp:5451 @ compute_pipeline_create()
  <Stack Trace> pipeline.gd:12 @ _ready()

E 0:00:00:571   pipeline.gd:12 @ _ready(): Condition "!pipeline.driver_id" is true. Returning: RID()
  <C++ Source>  servers/rendering/rendering_device.cpp:4341 @ compute_pipeline_create()
  <Stack Trace> pipeline.gd:12 @ _ready()
```

Remove `uint map_size = gl_NumWorkGroups.x` from shader.glsl to fix the pipeline error

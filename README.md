# psgg-delphi-sample
StateGo DELPHI Sample

# ENVIRONMENT

Windows 10  
[Delphi 10.3](https://www.embarcadero.com/products/delphi)  
[StateGo](https://statego.programanic.com/)

# INSTRUCTION

1. Open sample/TestControl.psgg  
2. Push "Save and Convert" button  
3. Open sample/Project01.dpr using Delphi  
4. Build.  
5. Execute "Project01.exe"  

# Sample
## StateGo Chart
<a href="https://raw.githubusercontent.com/NNNIC/psgg-delphi-sample/master/wiki/sample2.png" ><img src="https://raw.githubusercontent.com/NNNIC/psgg-delphi-sample/master/wiki/sample2.png" width="400px" />  </a>
## Open by Delphi
<a href="https://raw.githubusercontent.com/NNNIC/psgg-delphi-sample/master/wiki/proj.png" ><img src="https://raw.githubusercontent.com/NNNIC/psgg-delphi-sample/master/wiki/proj.png" width="400px" />  </a>
## Output
<a href="https://raw.githubusercontent.com/NNNIC/psgg-delphi-sample/master/wiki/exe.png" ><img src="https://raw.githubusercontent.com/NNNIC/psgg-delphi-sample/master/wiki/exe.png" width="400px" />  </a>

# Sample Explanation
## STATEs relating the flow 
|STATE| Description|
|-|-|
|[0001]| Output "Hello World!".|
|[0013]| Calling the [E0001] embeded procedure.|
|[GSB001]| Call the [SBS002] subroutine.|
|[0012]|Preparation for using random method.|
|[0015]| Pick 0 or 1 and branch.|
|[LOP000]|Loop 10 times. Call SBS001|
## STATEs not relating the flow
|STATE| Description|
| --- | --- |
|[C_0003]| Comment  |
|[E_0001]| Definition for hoge procedure |
|[E_0003]| Declaratin for [LOP000]'s varibles. |

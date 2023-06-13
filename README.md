# COD-2023-labs
> 此仓库是我在2023年春季学期的计算机组成原理（H）实验的实验仓库。

课程老师：王超

实验老师：张俊霞

本学期一共有六次实验，在`LABH0`的`PPT`中也可以看到介绍，在这里简单介绍一下：

### 实验介绍

- **LABH0**

  综述，介绍本学期实验内容和提交、检查等情况。

- **LABH1**

  `ALU`模块的实现，并使用其实现计算四个输入数据的滑动平均`WAV`。

- **LABH2**

  寄存器堆和存储器的实现，并利用其实现存储器中数据的排序。

- **LABH3**

  写汇编，实现`riscv-32I`中18条指令的测试程序和排序程序，为以下的`CPU`做准备。

- **LABH4**

  单周期`CPU`。

- **LABH5**

  流水线`CPU`。

- **LABH6**

  在流水线`CPU`的基础上加入高速缓存和输入输出模块。

### 文件结构介绍

除了`LABH3`，每个文件夹下都有这么几个文件：

```powershell
├─bitstream
├─LABHx.srcs
│  ├─constrs_1
│  │  └─new
│  ├─sim_1
│  │  └─new
│  ├─sources_1
│  │  ├─ip
│  │  │  ├─blk_mem_gen_0
│  │  │  └─instr_mem
│  │  └─new
│  └─utils_1
│      └─imports
│          └─synth_1
├─LABHx图片
├─SDU_xx-xx
│  └─SDU
├─testcases
├─LABHx_PB21xxxxxx_xxx_v1.md
├─LABHx_PB21xxxxxx_xxx_v1.pdf
├─LABHx_xxxxx.pptx
```

- `bitstream`：本实验最终生成的`bit`流
- `LABHx.srcs`：本实验在`Vivado`项目中的`srcs`块
  - `constrs_1`：包括本实验的`constraint`文件
  - `sim_1`：包括本实验的`simulate`文件
  - `sources_1`：包括了本实验例化的`ip`核和`design`文件
  - `utils`：工具，没啥用
- `LABHx图片`：实验报告的图片
- `SDU_xx-xx`：本实验用的`SDU`
- `testcases`：本实验用的测试汇编代码以及其对应的`coe`文件
- `LABHx_PB21xxxxxx_xxx_v1.md`：实验报告的`md`文件
- `LABHx_PB21xxxxxx_xxx_v1.pdf`：实验报告的`pdf`文件
- `LABHx_xxxxx.pptx`：实验的`PPT`，一般来说依托答辩。

**本学期实验没有实验手册和提示**，不觉得离谱吗？什么都要从那个一坨的`PPT`里扣字眼，从这个方面将是体验极差的，加上助教是研究生，可能不能给予我们太多具体的帮助，只有一些提示。。。。不说了，反正在这个仓库中，`LABH3`及之前当时没认真整理，只能参考，请勿全信；但是`LABH4`及以后的`CPU`部分整理的比较详细，实验报告中也详细地写了实验的一些**具体细节**，还有**单周期、流水线、高速缓存的状态机、信号处理**。应该可以确保正确，可以参考（不建议直接抄抄）。

### 实验工具和参考资料介绍

- `SDU`工具：发指令测试`CPU`，具体可以参考文件夹里面的指引。
- 异步串行通信程序`X_COM`：配合`SDU`使用，具体也可以看：[这里](LABH4\SDU-SC_cwyl\README.md)。

- `Rars`：类似`LC3 Tool`，汇编代码的编译器和运行工具，要配下`java`环境，这个到时候会教的。

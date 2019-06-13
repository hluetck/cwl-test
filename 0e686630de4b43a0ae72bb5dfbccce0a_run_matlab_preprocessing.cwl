arguments: []
baseCommand:
- run_matlab_preprocessing
class: CommandLineTool
cwlVersion: v1.0
hints: []
inputs:
  input_1:
    default: runPreprocessing_wrapper
    inputBinding:
      position: 1
      prefix: -f
      separate: true
      shellQuote: true
    streamable: false
    type: string
  input_2:
    default:
      class: Directory
      listing: []
      path: ../../data/M1/Session1/raw
    inputBinding:
      position: 2
      prefix: -d
      separate: true
      shellQuote: true
    streamable: false
    type: Directory
outputs:
  output_0:
    outputBinding:
      glob: data/M1/Session1/preprocessed/preprocessedMovie.h5
    streamable: false
    type: File
  output_1:
    outputBinding:
      glob: data/M1/Session1/preprocessed/p.mat
    streamable: false
    type: File
permanentFailCodes: []
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: '$({"listing": [], "class": "Directory"})'
    entryname: data/M1/Session1/preprocessed
    writable: true
successCodes: []
temporaryFailCodes: []

baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: primus
inputs:
  degree_rel:
    default: 1
    doc: ''
    inputBinding:
      position: 2
      prefix: --degree_rel
    type: long?
  plink_genome_file:
    doc: .genome file generated by PLINK
    inputBinding:
      position: 1
      prefix: --plink_genome_file
    type: File
label: PRIMUS
outputs:
  primus_results:
    doc: ''
    outputBinding:
      glob: primus_results/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/primus:6
s:author:
  class: s:Person
  s:name: Jeffrey Staples

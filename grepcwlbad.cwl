class: Workflow
cwlVersion: v1.0
description: ''
hints:
- {class: 'sbg:GoogleInstanceType', value: n1-standard-1}
- {class: 'sbg:AWSInstanceType', value: c4.large;ebs-gp2;2}
id: genomko/milmat-batch-grep/grep-workflow-batch/2
inputs:
- id: '#filein'
  label: filein
  sbg:x: 105
  sbg:y: 97
  type:
  - 'null'
  - {items: File, name: filein, type: array}
- id: '#pattern'
  type: ['null', string]
label: grep workflow batch
outputs:
- id: '#outfile'
  label: outfile
  required: false
  sbg:includeInPorts: true
  sbg:x: 990
  sbg:y: 258
  source: ['#grep_cwl_tool.outfile']
  type: ['null', File]
requirements: []
# sbg:batchBy: {type: item}
# sbg:batchInput: '#filein'
sbg:canvas_x: -1
sbg:canvas_y: -2
sbg:canvas_zoom: 1
sbg:contributors: [genomko]
sbg:createdBy: genomko
sbg:createdOn: 1459933413
sbg:id: genomko/milmat-batch-grep/grep-workflow-batch/2
sbg:image_url: null
sbg:latestRevision: 2
sbg:modifiedBy: genomko
sbg:modifiedOn: 1459933495
sbg:project: genomko/milmat-batch-grep
sbg:revision: 2
sbg:revisionsInfo:
- {'sbg:modifiedBy': genomko, 'sbg:modifiedOn': 1459933495, 'sbg:revision': 2}
- {'sbg:modifiedBy': genomko, 'sbg:modifiedOn': 1459933413, 'sbg:revision': 0}
- {'sbg:modifiedBy': genomko, 'sbg:modifiedOn': 1459933448, 'sbg:revision': 1}
sbg:sbgMaintained: false
sbg:validationErrors: []
steps:
- id: '#grep_cwl_tool'
  inputs:
  - id: '#grep_cwl_tool.pattern'
    source: ['#pattern']
  - id: '#grep_cwl_tool.filein'
    source: ['#filein']
  outputs:
  - {id: '#grep_cwl_tool.outfile'}
  run:
    arguments: []
    baseCommand: [grep]
    class: CommandLineTool
    description: ''
    hints:
    - {class: 'sbg:CPURequirement', value: 1}
    - {class: 'sbg:MemRequirement', value: 1000}
    - {class: DockerRequirement, dockerImageId: '', dockerPull: 'ubuntu:latest'}
    id: https://staging-api.sbgenomics.com/v2/apps/genomko/milmat-batch-grep/grep-cwl-tool/1/raw/
    inputs:
    - id: '#pattern'
      inputBinding: {position: 1, 'sbg:cmdInclude': true, separate: true}
      type: ['null', string]
    - id: '#filein'
      inputBinding: {itemSeparator: null, position: 2, 'sbg:cmdInclude': true, separate: true}
      required: false
      sbg:stageInput: null
      type:
      - 'null'
      - {items: File, name: filein, type: array}
    label: grep cwl tool
    outputs:
    - id: '#outfile'
      outputBinding: {glob: '*.txt'}
      type: ['null', File]
    requirements: []
    sbg:cmdPreview: grep  > out.txt
    sbg:contributors: [genomko]
    sbg:createdBy: genomko
    sbg:createdOn: 1459933349
    sbg:id: genomko/milmat-batch-grep/grep-cwl-tool/1
    sbg:image_url: null
    sbg:job:
      allocatedResources: {cpu: 1, mem: 1000}
      inputs:
        filein:
        - class: File
          path: /path/to/filein-1.ext
          secondaryFiles: []
          size: 0
        - class: File
          path: /path/to/filein-2.ext
          secondaryFiles: []
          size: 0
        pattern: pattern-string-value
    sbg:latestRevision: 1
    sbg:modifiedBy: genomko
    sbg:modifiedOn: 1459933400
    sbg:project: genomko/milmat-batch-grep
    sbg:revision: 1
    sbg:revisionsInfo:
    - {'sbg:modifiedBy': genomko, 'sbg:modifiedOn': 1459933349, 'sbg:revision': 0}
    - {'sbg:modifiedBy': genomko, 'sbg:modifiedOn': 1459933400, 'sbg:revision': 1}
    sbg:sbgMaintained: false
    sbg:validationErrors: []
    stdin: ''
    stdout: out.txt
    successCodes: [0, 1]
    temporaryFailCodes: []
    x: 530
    y: 180
  sbg:x: 530
  sbg:y: 180


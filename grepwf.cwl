---
class: Workflow
cwlVersion: v1.0
steps:
- id: "#grep_cwl_tool"
  run:
    hints:
    - class: "sbg:CPURequirement"
      value: 1
    - class: "sbg:MemRequirement"
      value: 1000
    - dockerImageId: ''
      class: DockerRequirement
      dockerPull: ubuntu:latest
    stdout: out.txt
    x: 530
    arguments: []
    sbg:image_url: 
    sbg:revision: 1
    stdin: ''
    baseCommand:
    - grep
    "sbg:createdOn": 1459933349
    "sbg:contributors":
    - genomko
    id: https://staging-api.sbgenomics.com/v2/apps/genomko/milmat-batch-grep/grep-cwl-tool/1/raw/
    outputs:
    - id: "#outfile"
      outputBinding:
        glob: "*.txt"
      type:
      - 'null'
      - File
    "sbg:sbgMaintained": false
    "sbg:latestRevision": 1
    successCodes:
    - 0
    - 1
    "sbg:job":
      allocatedResources:
        cpu: 1
        mem: 1000
      inputs:
        filein:
        - size: 0
          class: File
          secondaryFiles: []
          path: "/path/to/filein-1.ext"
        - size: 0
          class: File
          secondaryFiles: []
          path: "/path/to/filein-2.ext"
        pattern: pattern-string-value
    "sbg:id": genomko/milmat-batch-grep/grep-cwl-tool/1
    y: 180
    inputs:
    - id: "#pattern"
      type:
      - 'null'
      - string
      inputBinding:
        separate: true
        position: 1
        "sbg:cmdInclude": true
    - id: "#filein"
      type:
      - 'null'
      - name: filein
        type: array
        items: File
      inputBinding:
        separate: true
        "sbg:cmdInclude": true
        position: 2
        itemSeparator: 
      required: false
      "sbg:stageInput": 
    requirements: []
    "sbg:createdBy": genomko
    temporaryFailCodes: []
    description: ''
    sbg:project: genomko/milmat-batch-grep
    "sbg:cmdPreview": grep  > out.txt
    label: grep cwl tool
    "sbg:modifiedOn": 1459933400
    "sbg:modifiedBy": genomko
    class: CommandLineTool
    "sbg:validationErrors": []
    "sbg:revisionsInfo":
    - "sbg:revision": 0
      "sbg:modifiedOn": 1459933349
      "sbg:modifiedBy": genomko
    - "sbg:revision": 1
      "sbg:modifiedOn": 1459933400
      "sbg:modifiedBy": genomko
  inputs:
  - id: "#grep_cwl_tool.pattern"
    source:
    - "#pattern"
  - id: "#grep_cwl_tool.filein"
    source:
    - "#filein"
  outputs:
  - id: "#grep_cwl_tool.outfile"
  sbg:x: 530
  sbg:y: 180
requirements: []
inputs:
- label: filein
  id: "#filein"
  type:
  - 'null'
  - name: filein
    type: array
    items: File
  "sbg:x": 105
  "sbg:y": 97
- id: "#pattern"
  type:
  - 'null'
  - string
outputs:
- id: "#outfile"
  "sbg:x": 990
  type:
  - 'null'
  - File
  "sbg:y": 258
  label: outfile
  "sbg:includeInPorts": true
  required: false
  source:
  - "#grep_cwl_tool.outfile"
"sbg:sbgMaintained": false
"sbg:latestRevision": 2
"sbg:image_url": 
"sbg:revision": 2
"sbg:validationErrors": []
"sbg:createdOn": 1459933413
"sbg:contributors":
- genomko
"sbg:canvas_x": -1
"sbg:batchBy":
  type: item
"sbg:id": genomko/milmat-batch-grep/grep-workflow-batch/2
"sbg:canvas_y": -2
"sbg:canvas_zoom": 1
"sbg:createdBy": genomko
"sbg:batchInput": "#filein"
"sbg:project": genomko/milmat-batch-grep
"sbg:modifiedOn": 1459933495
"sbg:modifiedBy": genomko
"sbg:revisionsInfo":
- "sbg:revision": 2
  "sbg:modifiedOn": 1459933495
  "sbg:modifiedBy": genomko
- "sbg:revision": 0
  "sbg:modifiedOn": 1459933413
  "sbg:modifiedBy": genomko
- "sbg:revision": 1
  "sbg:modifiedOn": 1459933448
  "sbg:modifiedBy": genomko
id: genomko/milmat-batch-grep/grep-workflow-batch/2
label: "grep workflow batch"
description: ''
hints:
- class: sbg:GoogleInstanceType
  value: n1-standard-1
- class: sbg:AWSInstanceType
  value: c4.large;ebs-gp2;2

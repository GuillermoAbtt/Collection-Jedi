{
  "version": "1.2",
  "package": {
    "name": "Separador-12-12 CLONE",
    "version": "0.1",
    "description": "Separador de bus de 24-bits en dos buses de 12 y 12 bits",
    "author": "Juan González-Gómez (Obijuan)",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "227b5ea0-4b5f-4e9b-9043-31286df08ef2",
          "type": "basic.output",
          "data": {
            "name": "o1",
            "range": "[11:0]",
            "pins": [
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 584,
            "y": 128
          }
        },
        {
          "id": "9f9b58d8-72f1-4832-bfe7-88eb135fa088",
          "type": "basic.input",
          "data": {
            "name": "i",
            "range": "[23:0]",
            "clock": false,
            "size": 24
          },
          "position": {
            "x": 64,
            "y": 200
          }
        },
        {
          "id": "a41d7201-0ada-4f52-a889-4eb1ba82b8ad",
          "type": "basic.output",
          "data": {
            "name": "o0",
            "range": "[11:0]",
            "pins": [
              {
                "index": "11",
                "name": "",
                "value": ""
              },
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 576,
            "y": 232
          }
        },
        {
          "id": "16e78204-213e-4833-9096-89d735307ec2",
          "type": "basic.code",
          "data": {
            "code": "assign o1 = i[23:12];\nassign o0 = i[11:0];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i",
                  "range": "[23:0]",
                  "size": 24
                }
              ],
              "out": [
                {
                  "name": "o1",
                  "range": "[23:12]",
                  "size": 12
                },
                {
                  "name": "o0",
                  "range": "[11:0]",
                  "size": 12
                }
              ]
            }
          },
          "position": {
            "x": 224,
            "y": 176
          },
          "size": {
            "width": 256,
            "height": 112
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9f9b58d8-72f1-4832-bfe7-88eb135fa088",
            "port": "out"
          },
          "target": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "i"
          },
          "size": 24
        },
        {
          "source": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "o1"
          },
          "target": {
            "block": "227b5ea0-4b5f-4e9b-9043-31286df08ef2",
            "port": "in"
          },
          "size": 12
        },
        {
          "source": {
            "block": "16e78204-213e-4833-9096-89d735307ec2",
            "port": "o0"
          },
          "target": {
            "block": "a41d7201-0ada-4f52-a889-4eb1ba82b8ad",
            "port": "in"
          },
          "size": 12
        }
      ]
    }
  },
  "dependencies": {}
}
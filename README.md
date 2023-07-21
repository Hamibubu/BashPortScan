# BashPortScanner

This is a simple port scanner designed to check for open ports on a specific IP address. You can use this script to verify the accessibility of ports on a remote host and determine if they are available for communication.

## Requirements

Make sure you have the following installed on your system before using the port scanner:

- Bash

## Usage

Run the script from the command line providing the IP address and the ports you want to scan. Below is the command format:

```bash
./portscan.sh -i <ip_address> -p <ports>
```

Where:

    <ip_address> is the IP address of the host you want to scan.
    <ports> is a single port number or a range of ports in the format "start-end". For example, you can specify a single port with 80, or a range of ports with 1000-2000.

Example

Here's an example of how to use the port scanner:

```
./portscan.sh -i 192.168.0.1 -p 80-100
```

## Options

The port scanner supports the following options:

    -i, --ip: Specifies the IP address of the host you want to scan.
    -p, --puertos: Specifies the ports you want to scan. You can provide a single port or a range of ports in the "start-end" format.

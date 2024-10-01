<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Session SimpleX Signal and Telegram</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      margin: 20px 0;
    }
    table, th, td {
      border: 1px solid #dddddd;
    }
    th, td {
      padding: 12px;
      text-align: left;
    }
    th {
      background-color: #f4f4f4;
    }
  </style>
</head>
<body>

  <h1>Comparison: Session, SimpleX, Signal, and Telegram</h1>

  <table border="1">
    <thead>
      <tr>
        <th>Feature</th>
        <th><a href="https://getsession.org" target="_blank">Session</a></th>
        <th><a href="https://simplex.chat" target="_blank">SimpleX</a></th>
        <th><a href="https://signal.org" target="_blank">Signal</a></th>
        <th><a href="https://telegram.org" target="_blank">Telegram</a></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Protocol Type</strong></td>
        <td>LibP2P</td>
        <td>Custom (Double Ratchet)</td>
        <td>Signal Protocol (Double Ratchet)</td>
        <td>MTProto</td>
      </tr>
      <tr>
        <td><strong>Primary Use Case</strong></td>
        <td>Anonymous, decentralized messaging</td>
        <td>Privacy-focused messaging</td>
        <td>Privacy-focused messaging</td>
        <td>General messaging, media sharing</td>
      </tr>
      <tr>
        <td><strong>Encryption</strong></td>
        <td>End-to-end encryption (default)</td>
        <td>End-to-end encryption (default)</td>
        <td>End-to-end encryption (default)</td>
        <td>Client-server encryption (default), End-to-end encryption (Secret Chats)</td>
      </tr>
      <tr>
        <td><strong>Decentralization</strong></td>
        <td>Fully decentralized (no central servers)</td>
        <td>Decentralized communication nodes</td>
        <td>Centralized servers</td>
        <td>Centralized servers</td>
      </tr>
      <tr>
        <td><strong>Identity Management</strong></td>
        <td>Anonymous (no phone number or email required)</td>
        <td>Username-based (no phone number required)</td>
        <td>Phone number-based</td>
        <td>Phone number-based</td>
      </tr>
      <tr>
        <td><strong>Message Persistence</strong></td>
        <td>Client-side only (no cloud storage)</td>
        <td>Client-side only (no cloud storage)</td>
        <td>Client-side only (optional backup)</td>
        <td>Cloud storage (optional local storage)</td>
      </tr>
      <tr>
        <td><strong>Group Chats</strong></td>
        <td>Supported</td>
        <td>Supported</td>
        <td>Up to 1,000 members</td>
        <td>Up to 200,000 members</td>
      </tr>
      <tr>
        <td><strong>File Sharing</strong></td>
        <td>Limited to client-side capacity</td>
        <td>Limited to client-side capacity</td>
        <td>Supports files up to 100MB</td>
        <td>Supports large files (up to 2GB)</td>
      </tr>
      <tr>
        <td><strong>Metadata Protection</strong></td>
        <td>Strong (no central server metadata storage)</td>
        <td>Strong (no central server metadata storage)</td>
        <td>Strong (minimizes metadata collection)</td>
        <td>Limited (metadata stored on servers)</td>
      </tr>
      <tr>
        <td><strong>Open Source</strong></td>
        <td>Fully open-source</td>
        <td>Fully open-source</td>
        <td>Fully open-source</td>
        <td>Partially (client is open-source, server is proprietary)</td>
      </tr>
      <tr>
        <td><strong>Cross-Platform Availability</strong></td>
        <td>iOS, Android, Windows, macOS, Linux</td>
        <td>iOS, Android, Linux, Web</td>
        <td>iOS, Android, Windows, macOS, Linux</td>
        <td>iOS, Android, Windows, macOS, Linux, Web</td>
      </tr>
      <tr>
        <td><strong>License</strong></td>
        <td>GPLv3</td>
        <td>AGPLv3</td>
        <td>GPLv3</td>
        <td>Custom (Telegram license)</td>
      </tr>
    </tbody>
  </table>

</body>
</html>

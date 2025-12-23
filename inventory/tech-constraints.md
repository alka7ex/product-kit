# 🚧 Technical Constraints

> "Know the limits before you design."

## 1. Platform Limitations

### 📱 Mobile App
-   **Constraint**: The mobile app is a wrapper (React Native) around the web view for some pages.
-   **Impact**: Complex interactions (like drag-and-drop) feel janky on mobile.
-   **Workaround**: Use "Tap to Move" menus instead of drag-and-drop on mobile.

### 🌐 Browser Support
-   **Constraint**: We do NOT support Internet Explorer 11.
-   **Impact**: Enterprise clients on legacy systems cannot use the app.
-   **Policy**: Support last 2 versions of Chrome, Firefox, Safari, Edge.

---

## 2. Performance Limits

### 📊 Data Volume
-   **Constraint**: A project cannot have more than 10,000 tasks.
-   **Reason**: Frontend rendering performance degrades significantly.
-   **Error Message**: "Project limit reached. Please archive old tasks."

### ⏱️ Real-time Updates
-   **Constraint**: Updates are not instant (polling every 30s).
-   **Impact**: Two users editing the same task might overwrite each other.
-   **Workaround**: "Last write wins" strategy.

---

## 3. Third-Party Dependencies

### 📧 Email (SendGrid)
-   **Constraint**: Max 100 emails/minute per workspace.
-   **Impact**: Bulk invites might be delayed.

### ☁️ File Storage (S3)
-   **Constraint**: Max file size upload is 25MB.
-   **Impact**: Users cannot upload large video files.

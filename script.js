// Main React application
const { useState, useEffect } = React;

const App = () => {
    const [prompt, setPrompt] = useState('');
    const [selectedStyle, setSelectedStyle] = useState(null);
    const [duration, setDuration] = useState(15);
    const [isGenerating, setIsGenerating] = useState(false);
    const [videoUrl, setVideoUrl] = useState(null);
    const [previewMode, setPreviewMode] = useState(false);

    const videoStyles = [
        { id: 1, name: 'Cinematic', thumbnail: 'http://static.photos/black/200x200/1' },
        { id: 2, name: 'Anime', thumbnail: 'http://static.photos/red/200x200/2' },
        { id: 3, name: 'Cyberpunk', thumbnail: 'http://static.photos/blue/200x200/3' },
        { id: 4, name: 'Documentary', thumbnail: 'http://static.photos/green/200x200/4' },
        { id: 5, name: 'Fantasy', thumbnail: 'http://static.photos/yellow/200x200/5' },
        { id: 6, name: 'Sci-Fi', thumbnail: 'http://static.photos/technology/200x200/6' },
    ];

    const handleGenerate = () => {
        if (!prompt.trim()) {
            alert('Please enter a video description');
            return;
        }
        
        if (!selectedStyle) {
            alert('Please select a video style');
            return;
        }

        setIsGenerating(true);
        setPreviewMode(true);
        
        // Simulate API call
        setTimeout(() => {
            // In a real app, this would be the URL from your backend
            setVideoUrl('https://example.com/sample-video.mp4');
            setIsGenerating(false);
        }, 3000);
    };

    const handleDownload = () => {
        if (videoUrl) {
            const link = document.createElement('a');
            link.href = videoUrl;
            link.download = `dreamreel-${Date.now()}.mp4`;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }
    };

    return (
        <div className="space-y-8">
            <h1 className="text-3xl font-bold text-center">Create AI-Generated Videos</h1>
            
            <div className="space-y-4">
                <label className="block text-sm font-medium">Video Description</label>
                <textarea
                    className="w-full prompt-input p-4 rounded-lg border focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500"
                    placeholder="Describe the video you want to generate..."
                    value={prompt}
                    onChange={(e) => setPrompt(e.target.value)}
                />
            </div>
            
            <div className="space-y-4">
                <label className="block text-sm font-medium">Video Style</label>
                <div className="style-selector grid grid-cols-2 sm:grid-cols-3 gap-4 max-h-64 overflow-y-auto p-2">
                    {videoStyles.map(style => (
                        <div
                            key={style.id}
                            className={`style-card p-3 rounded-lg border-2 cursor-pointer transition-colors ${selectedStyle?.id === style.id ? 'border-indigo-500 bg-indigo-900/20' : 'border-gray-700 hover:border-gray-600'}`}
                            onClick={() => setSelectedStyle(style)}
                        >
                            <img src={style.thumbnail} alt={style.name} className="w-full h-24 object-cover rounded mb-2" />
                            <p className="text-center font-medium">{style.name}</p>
                        </div>
                    ))}
                </div>
            </div>
            
            <div className="space-y-4">
                <label className="block text-sm font-medium">Duration: {duration} seconds</label>
                <input
                    type="range"
                    min="5"
                    max="60"
                    value={duration}
                    onChange={(e) => setDuration(e.target.value)}
                    className="w-full h-2 bg-gray-700 rounded-lg appearance-none cursor-pointer"
                />
            </div>
            
            {previewMode && (
                <div className="space-y-4">
                    <label className="block text-sm font-medium">Video Preview</label>
                    <div className="video-preview flex items-center justify-center relative">
                        {isGenerating ? (
                            <div className="absolute inset-0 flex items-center justify-center">
                                <div className="loading-spinner w-12 h-12 border-4 border-indigo-500 border-t-transparent rounded-full"></div>
                            </div>
                        ) : videoUrl ? (
                            <video controls className="w-full h-full">
                                <source src={videoUrl} type="video/mp4" />
                                Your browser does not support the video tag.
                            </video>
                        ) : (
                            <div className="text-gray-400 flex items-center justify-center h-full">
                                <i data-feather="film" className="w-12 h-12"></i>
                            </div>
                        )}
                    </div>
                </div>
            )}
            
            <div className="flex flex-col sm:flex-row gap-4 pt-4">
                {previewMode && videoUrl && (
                    <button
                        onClick={handleDownload}
                        className="flex-1 bg-green-600 hover:bg-green-700 text-white py-3 px-6 rounded-lg font-medium flex items-center justify-center gap-2"
                    >
                        <i data-feather="download"></i>
                        Download Video
                    </button>
                )}
                
                <button
                    onClick={handleGenerate}
                    disabled={isGenerating}
                    className={`flex-1 py-3 px-6 rounded-lg font-medium flex items-center justify-center gap-2 ${isGenerating ? 'bg-indigo-800 cursor-not-allowed' : 'bg-indigo-600 hover:bg-indigo-700'}`}
                >
                    {isGenerating ? (
                        <>
                            <div className="loading-spinner w-5 h-5 border-2 border-white border-t-transparent rounded-full"></div>
                            Generating...
                        </>
                    ) : (
                        <>
                            <i data-feather="play"></i>
                            Generate Video
                        </>
                    )}
                </button>
            </div>
        </div>
    );
};

// Initialize Three.js scene for background
const initThreeScene = () => {
    const container = document.createElement('div');
    container.className = 'fixed inset-0 -z-10 opacity-10';
    document.body.appendChild(container);

    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
    const renderer = new THREE.WebGLRenderer({ alpha: true });
    renderer.setSize(window.innerWidth, window.innerHeight);
    container.appendChild(renderer.domElement);

    const particlesGeometry = new THREE.BufferGeometry();
    const particlesCount = 1000;
    const posArray = new Float32Array(particlesCount * 3);

    for (let i = 0; i < particlesCount * 3; i++) {
        posArray[i] = (Math.random() - 0.5) * 10;
    }

    particlesGeometry.setAttribute('position', new THREE.BufferAttribute(posArray, 3));
    const particlesMaterial = new THREE.PointsMaterial({
        size: 0.02,
        color: 0x6366f
